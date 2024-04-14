import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_auth/src/common/presentation/blocs/register_bloc/register_bloc.dart';
import 'package:sdugram_auth/src/common/presentation/blocs/register_bloc/register_event.dart';
import 'package:sdugram_auth/src/common/presentation/blocs/register_bloc/register_state.dart';
import 'package:sdugram_auth/src/common/presentation/widgets/checking_password_text.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/presentation.dart';

@RoutePage()
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late InputController _emailInput;
  late InputController _passwordInput;
  late InputController _username;
  late InputController _passwordRepeat;

  @override
  void initState() {
    _emailInput = InputController();
    _passwordInput = InputController();
    _username = InputController();
    _passwordRepeat = InputController();
    super.initState();
  }

  @override
  void dispose() {
    _emailInput.dispose();
    _passwordInput.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => context.di<RegisterBloc>(),
        child: BlocConsumer<RegisterBloc, RegisterState>(
            listener: (blocContext, state) {
              // state.status.mapOrNull(loading: () {});
          if (state.status is RegisterSuccess) {
            blocContext.router.replaceNamed('/login/${_username.text}');
          }
        }, buildWhen: (oldState, newState) {
          if (oldState.isCaps != newState.isCaps) {
            return true;
          }
          if (oldState.isNumber != newState.isNumber) {
            return true;
          }
          if (oldState.isFullSymbols != newState.isFullSymbols) {
            return true;
          }
          if (oldState.isMatched != newState.isMatched) {
            return true;
          }
          return false;
        }, builder: (blocContext, state) {
          return Scaffold(
                  body: SafeArea(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 700,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 65,
                                  ),
                                  AssetsGen.images.logo
                                      .image(fit: BoxFit.contain),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  const Text(
                                    'Sign up',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  SduInput(
                                    labelText: 'Email',
                                    controller: _emailInput,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SduInput(
                                    labelText: 'Username',
                                    controller: _username,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SduInput(
                                    obscureText: true,
                                    labelText: 'Password',
                                    controller: _passwordInput,
                                    onChanged: (text) {
                                      blocContext.read<RegisterBloc>().add(
                                          RegisterPasswordEntered(
                                              password: text));
                                    },
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SduInput(
                                    obscureText: true,
                                    labelText: 'Repeat Password',
                                    controller: _passwordRepeat,
                                    onChanged: (text) {
                                      blocContext.read<RegisterBloc>().add(
                                          RegisterPasswordEntered(
                                              passwordRepeat: text));
                                    },
                                  ),
                                  CheckingPasswordText(
                                    text: 'Passwords matched',
                                    isCorrect: state.isMatched,
                                  ),
                                  CheckingPasswordText(
                                    text: 'Minimum 8 symbols',
                                    isCorrect: state.isFullSymbols,
                                  ),
                                  CheckingPasswordText(
                                    text: '1 number',
                                    isCorrect: state.isNumber,
                                  ),
                                  CheckingPasswordText(
                                    text: '1 capital letter',
                                    isCorrect: state.isCaps,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(24),
                          child: SizedBox(
                            width: double.infinity,
                            child: SduButton.primary(
                              label: 'Sign up',
                              trailingIcon: const Icon(
                                Icons.navigate_next,
                                color: Colors.white,
                                size: 20,
                              ),
                              size: SduButtonSize.first,
                              onPressed: state.isMatched &&
                                      state.isCaps &&
                                      state.isNumber &&
                                      state.isFullSymbols &&
                                      _emailInput.text.isNotEmpty &&
                                      _username.text.isNotEmpty
                                  ? () {

                                      blocContext.read<RegisterBloc>().add(
                                          RegisterButtonPressed(
                                              username: _username.text,
                                              password: _passwordInput.text,
                                              email: _emailInput.text,
                                              passwordRepeat:
                                                  _passwordRepeat.text));
                                    }
                                  : null,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account? ',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            InkWell(
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontFamily: 'Poppins',
                                    decoration: TextDecoration.underline),
                              ),
                              onTap: () {
                                context.router.replaceNamed('/login');
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
        }));
  }
}
