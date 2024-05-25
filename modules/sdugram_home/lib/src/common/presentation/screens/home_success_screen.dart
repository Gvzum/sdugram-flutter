import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

@RoutePage()
class HomeSuccessScreen extends StatefulWidget {
  const HomeSuccessScreen({super.key});

  @override
  State<HomeSuccessScreen> createState() => _HomeSuccessScreenState();
}

class _HomeSuccessScreenState extends State<HomeSuccessScreen> {
  late InputController _payment;
  late InputController _amount;
  late InputController _date;

  @override
  void initState() {
    _payment = InputController(text: 'Free');
    _amount = InputController(text: '0 T');
    _date = InputController(text: 'Nov 15 2024・09:00');
    super.initState();
  }

  @override
  void dispose() {
    _payment.dispose();
    _amount.dispose();
    _date.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              context.router.replaceNamed('/sdugram');
            },
          ),
          backgroundColor: kPrimaryColor, // Adjust to match your theme
        ),
        body: Column(children: [
          Container(
              decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(
                        6,
                      ))),
              child: const Column(
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    size: 80,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Your place has been successfully reserved',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Ticket details'),
                SduInput(
                  labelText: 'PAYMENT METHOD',
                  controller: _payment,
                ),
                SduInput(
                  labelText: 'AMOUNT',
                  controller: _amount,
                ),
                SduInput(
                  labelText: 'PAYMENT DATE',
                  controller: _date,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: SduButton.secondary(
                      label: 'See ticket',
                      onPressed: () {
                        context.router.replaceNamed('/sdugram/tickets');
                      },
                      size: SduButtonSize.first,
                    ),
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
