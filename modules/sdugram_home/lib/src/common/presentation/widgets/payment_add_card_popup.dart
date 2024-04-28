import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_home/sdugram_home.dart';

class PaymentAddCardPopup extends StatefulWidget {
  const PaymentAddCardPopup({super.key});

  @override
  State<PaymentAddCardPopup> createState() => _PaymentAddCardPopupState();
}

class _PaymentAddCardPopupState extends State<PaymentAddCardPopup> {
  late InputController _cardNumberInput;
  late InputController _dateInput;
  late InputController _cvvInput;

  @override
  void initState() {
    _cardNumberInput = InputController();
    _dateInput = InputController();
    _cvvInput = InputController();
    super.initState();
  }

  @override
  void dispose() {
    _cardNumberInput.dispose();
    _dateInput.dispose();
    _cvvInput.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => context.di<HomeBloc>(),
        child: BlocBuilder<HomeBloc, HomeState>(builder: (blocContext, state) {
          return SizedBox(
            height: 460, // Set this height to your preference
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 16),
                ListTile(
                  title: const Text(
                    'Add new card',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins'),
                  ),
                  onTap: () => Navigator.pop(context),
                  trailing: InkWell(
                    child: const Icon(Icons.close, color: kPrimaryColor),
                    onTap: () {
                      context.router.popForced();
                    },
                  ),
                  leading: InkWell(
                    child: const Icon(Icons.chevron_left),
                    onTap: () {
                      context.router.popForced();
                    },
                  ),
                ),
                SduInput(
                  labelText: '16 digits number',
                  controller: _cardNumberInput,
                  maxLength: 16,
                ),
                SduInput(
                  labelText: 'Expiration date',
                  placeholderText: 'm/d',
                  controller: _dateInput,
                  maxLength: 5,
                ),
                SduInput(
                  labelText: 'CVV/CVC',
                  placeholderText: '***',
                  obscureText: true,
                  maxLength: 3,
                  controller: _cvvInput,
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: SduButton.secondary(
                      label: 'Add card',
                      onPressed: () {
                        blocContext.read<HomeBloc>().add(HomeAddCardPressed(
                            cardNumber: _cardNumberInput.text,
                            cardholderName: _cvvInput.text,
                            expirationMonth:
                                int.parse((_dateInput.text).substring(0, 1)),
                            expirationYear:
                                int.parse((_dateInput.text).substring(3, 4))));
                      },
                      size: SduButtonSize.first,
                    ),
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
