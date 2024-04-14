import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_auth/sdugram_auth.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/presentation.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
    @pathParam this.username,
  });

  final String? username;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late InputController _emailInput;
  late InputController _passwordInput;

  @override
  void initState() {
    _emailInput = InputController();
    _passwordInput = InputController();
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
        create: (_) => context.di<LoginBloc>(),
        child:
            BlocConsumer<LoginBloc, LoginState>(listener: (blocContext, state) {
          if (state is LoginSuccess) {
            if ((widget.username ?? '') == _emailInput.text) {
              blocContext.router.replaceNamed('/onboarding');
            } else {
              blocContext.router.replaceNamed('/sdugram');
            }
          }
        }, builder: (blocContext, state) {
          return state is LoginLoading
              ? const Scaffold(body: Center(child: CircularLoader()))
              : Scaffold(
                  body: SafeArea(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 450,
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
                                    'Login',
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
                                    obscureText: true,
                                    labelText: 'Password',
                                    controller: _passwordInput,
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
                              label: 'Log In',
                              trailingIcon: const Icon(
                                Icons.navigate_next,
                                color: Colors.white,
                                size: 20,
                              ),
                              size: SduButtonSize.first,
                              onPressed: () {
                                blocContext.read<LoginBloc>().add(
                                    LoginButtonPressed(
                                        username: _emailInput.text,
                                        password: _passwordInput.text));
                              },
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Dont you have an account yet?',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            InkWell(
                              child: const Text(
                                'Signup',
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontFamily: 'Poppins',
                                    decoration: TextDecoration.underline),
                              ),
                              onTap: () {
                                context.router.replaceNamed('/register');
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
