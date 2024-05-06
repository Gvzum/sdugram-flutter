import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

class SduErrorPage extends StatelessWidget {
  const SduErrorPage(
      {super.key,
      required this.statusTitle,
      this.statusTitleMaxLines,
      this.description,
      this.descriptionMaxLines,
      this.caption,
      required this.primaryOnPress,
      required this.primaryTitle,
      this.secondaryOnPress,
      this.secondaryTitle,
      this.secondaryTitleColor,
      this.secondaryFillColor,
      this.snackBarIcon,
      this.snackBarText,
      this.snackBarAction,
      this.snackBarActionText,
      this.image,
      required this.reverseButtons,
      this.backgroundColor,
      this.customButton});

  final String statusTitle;
  final int? statusTitleMaxLines;
  final String? description;
  final int? descriptionMaxLines;
  final Widget? caption;
  final void Function() primaryOnPress;
  final String primaryTitle;
  final void Function()? secondaryOnPress;
  final String? secondaryTitle;
  final Color? secondaryTitleColor;
  final Color? secondaryFillColor;
  final IconData? snackBarIcon;
  final String? snackBarText;
  final Function()? snackBarAction;
  final String? snackBarActionText;
  final Widget? image;
  final bool reverseButtons;
  final Color? backgroundColor;
  final Widget? customButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
            child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: AssetsGen.icons.warning.svg(),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(statusTitle,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 20, fontFamily: 'Poppins')),
                        ],
                      ),
                    ),
                    if (customButton != null)
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: customButton!,
                      ),
                    if (reverseButtons)
                      SduButtonCell.customRow(
                        bccButton1: SduButton.secondary(
                          label: secondaryTitle,
                          onPressed: secondaryOnPress,
                        ),
                        bccButton2: SduButton.primary(
                          label: primaryTitle,
                          onPressed: primaryOnPress,
                        ),
                      ),
                    if (!reverseButtons)
                      SduButtonCell.column(
                        caption: caption,
                        primaryLabel: primaryTitle,
                        onPrimaryPressed: primaryOnPress,
                        secondaryLabel: secondaryTitle,
                        onSecondaryPressed: secondaryOnPress,
                      ),
                  ],
                ))));
  }
}
