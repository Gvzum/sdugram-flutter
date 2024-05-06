import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_home/sdugram_home.dart';

class PaymentMethodPopup extends StatefulWidget {
  const PaymentMethodPopup({
    super.key,
    required this.cards,
    required this.eventId,
    this.onPressed,
  });

  final ListCreditCardModel cards;
  final Function()? onPressed;
  final int eventId;

  @override
  State<PaymentMethodPopup> createState() => _PaymentMethodPopupState();
}

class _PaymentMethodPopupState extends State<PaymentMethodPopup> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => context.di<HomeBloc>(),
      child: BlocBuilder<HomeBloc, HomeState>(builder: (blocContext, state) {
        return SizedBox(
          height: 350, // Set this height to your preference
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 16),
              ListTile(
                title: const Text(
                  'Choose payment method',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'),
                ),
                trailing: InkWell(
                  child: const Icon(Icons.close, color: kPrimaryColor),
                  onTap: () {
                    context.router.popForced();
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16, top: 6),
                child: Text(
                  'EXISTING CARDS',
                  style: TextStyle(
                      fontSize: 12, fontFamily: 'Poppins', color: kTextColor),
                ),
              ),
              // _buildCardTile('233434343', 0),
              // _buildCardTile('233433567', 1),
              widget.cards.results.isNotEmpty
                  ? Expanded(
                      child: ListView.builder(
                          itemCount: widget.cards.results.length,
                          itemBuilder: (context, index) {
                            final card = widget.cards.results[index];
                            return _buildCardTile(
                                card.cardNumber, index, card.id, blocContext);
                          }),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          AssetsGen.icons.emptyState.svg(height: 39, width: 31),
                          const SizedBox(
                            height: 4,
                          ),
                          const Center(
                            child: Text(
                              'You have not linked your card. Please add your card',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
              const SizedBox(
                height: 16,
              ),
              SduButtonCell.row(
                primaryLabel: 'Pay',
                onPrimaryPressed: widget.onPressed,
                secondaryLabel: 'Add card',
                onSecondaryPressed: () {
                  _showAddCardPopup(context);
                },
              ),
              // : Padding(
              //     padding: const EdgeInsets.all(16.0),
              //     child: SizedBox(
              //       width: double.infinity,
              //       child: SduButton.secondary(
              //         label: 'Add card',
              //         onPressed: () {
              //           _showAddCardPopup(context);
              //         },
              //         size: SduButtonSize.first,
              //       ),
              //     ),
              //   ),
            ],
          ),
        );
      }),
    );
  }

  Widget _buildCardTile(
      String cardNumber, int index, int cardId, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          color: kButtonBackgroundColor,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(
              width: 1,
              color: _selectedIndex == index
                  ? kPrimaryColor
                  : kButtonBackgroundColor),
        ),
        child: ListTile(
          leading: AssetsGen.icons.visa.svg(),
          title: Text(
            '**** ${cardNumber.substring(cardNumber.length - 4, cardNumber.length)}',
            style: const TextStyle(
                fontFamily: 'Poppins', fontWeight: FontWeight.w500),
          ),
          selected: _selectedIndex == index,
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

void show(
  BuildContext context, {
  required String title,
  required String description,
  required String buttonLabel,
  required Function()? onPressed,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SduAlert(
        title: title,
        description: description,
        buttonLabel: buttonLabel,
        onPressed: onPressed,
      );
    },
  );
}

Future<void> _showAddCardPopup(BuildContext blocContext) async {
  await bccPopover(
    context: blocContext,
    pages: [
      BccPopoverPage(
        pageBuilder: (context) {
          return const PaymentAddCardPopup();
        },
        routeName: '/',
      ),
    ],
  );
}
