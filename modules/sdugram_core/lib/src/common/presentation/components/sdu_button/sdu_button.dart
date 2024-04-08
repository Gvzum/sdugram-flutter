import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

enum SduButtonType { primary, secondary }

enum SduButtonSize { first, second }

TextStyle get buttonPrimaryTextStyle => const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    height: 1.4,
    letterSpacing: 0.04,
    color: kBackgroundColor);

TextStyle get buttonSecondaryTextStyle => const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    height: 1.4,
    letterSpacing: 0.04,
    color: kPrimaryColor);

class SduButton extends StatelessWidget {
  final String? label;
  final Widget? leadingIcon;
  final double? leadingIconSpacing;
  final Widget? trailingIcon;
  final double? trailingIconSpacing;
  final VoidCallback? onPressed;
  final SduButtonSize? size;
  final SduButtonType _type;
  final double? horizontalPadding;

  const SduButton.primary({
    super.key,
    this.label,
    this.leadingIcon,
    this.leadingIconSpacing,
    this.trailingIcon,
    this.trailingIconSpacing,
    this.onPressed,
    this.size,
    this.horizontalPadding,
  }) : _type = SduButtonType.primary;

  const SduButton.secondary({
    super.key,
    this.label,
    this.leadingIcon,
    this.leadingIconSpacing,
    this.trailingIcon,
    this.trailingIconSpacing,
    this.onPressed,
    this.size,
    this.horizontalPadding,
  }) : _type = SduButtonType.secondary;

  @override
  Widget build(BuildContext context) {
    Color staticItemColor,
        pressedFillColor,
        pressedItemColor,
        disabledFillColor,
        disabledItemColor;
    TextStyle textStyle;
    double height;
    double borderRadius;
    double horizontalPadding;
    double leadingIconSpacing;
    double trailingIconSpacing;

    switch (_type) {
      case SduButtonType.primary:
        textStyle = buttonPrimaryTextStyle;
        staticItemColor = kPrimaryColor;
        pressedFillColor = kPressedPrimaryButtonColor;
        pressedItemColor = kPressedPrimaryButtonColor;
        disabledFillColor = kDisabledPrimaryButtonColor;
        disabledItemColor = kDisabledPrimaryButtonColor;
      case SduButtonType.secondary:
        textStyle = buttonSecondaryTextStyle;
        staticItemColor = kSecondaryColor;
        pressedFillColor = kSecondaryPressedButtonColor;
        pressedItemColor = kPressedPrimaryButtonColor;
        disabledFillColor = kSecondaryButtonColor;
        disabledItemColor = kDisabledPrimaryButtonColor;
    }

    switch (size) {
      case SduButtonSize.first:
        height = 44;
        borderRadius = 12;
        horizontalPadding = this.horizontalPadding ?? 24;
        leadingIconSpacing = this.leadingIconSpacing ?? 4;
        trailingIconSpacing = this.trailingIconSpacing ?? 4;
      default:
        height = 44;
        borderRadius = 18;
        horizontalPadding = this.horizontalPadding ?? 24;
        leadingIconSpacing = this.leadingIconSpacing ?? 4;
        trailingIconSpacing = this.trailingIconSpacing ?? 4;
    }

    return (_type == SduButtonType.primary)
        ? ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.disabled)) {
                  return disabledFillColor;
                }
                return staticItemColor;
              }),
              overlayColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return pressedFillColor;
                }
                return null;
              }),
              foregroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.disabled)) {
                  return disabledItemColor;
                }
                if (states.contains(MaterialState.pressed)) {
                  return pressedItemColor;
                }
                return staticItemColor;
              }),
              fixedSize: MaterialStatePropertyAll(Size.fromHeight(height)),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              elevation: const MaterialStatePropertyAll(0),
              padding: MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: horizontalPadding),
              ),
              splashFactory: NoSplash.splashFactory,
            ),
            onPressed: onPressed,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (leadingIcon != null) ...[
                  leadingIcon!,
                  SizedBox(width: leadingIconSpacing),
                ],
                Flexible(
                  child: Text(
                    label ?? "",
                    style: textStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (trailingIcon != null) ...[
                  SizedBox(width: trailingIconSpacing),
                  trailingIcon!,
                ],
              ],
            ),
          )
        : OutlinedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.disabled)) {
                  return disabledFillColor;
                }
                return staticItemColor;
              }),
              overlayColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return pressedFillColor;
                }
                return null;
              }),
              foregroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.disabled)) {
                  return disabledItemColor;
                }
                if (states.contains(MaterialState.pressed)) {
                  return pressedItemColor;
                }
                return staticItemColor;
              }),
              fixedSize: MaterialStatePropertyAll(Size.fromHeight(height)),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              elevation: const MaterialStatePropertyAll(0),
              padding: MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: horizontalPadding),
              ),
              splashFactory: NoSplash.splashFactory,
              side: MaterialStateProperty.all(const BorderSide(
                  color: kPrimaryColor, width: 1.0, style: BorderStyle.solid)),
            ),
            onPressed: onPressed,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (leadingIcon != null) ...[
                  leadingIcon!,
                  SizedBox(width: leadingIconSpacing),
                ],
                Flexible(
                  child: Text(
                    label ?? "",
                    style: textStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (trailingIcon != null) ...[
                  SizedBox(width: trailingIconSpacing),
                  trailingIcon!,
                ],
              ],
            ),
          );
  }
}

enum SduButtonCellType { column, row, customRow, customColumn }

/// Creates button cell according to BCC Design System
///
/// To exclude primary or secondary buttons you have to omit
/// label of the unwanted button
class SduButtonCell extends StatelessWidget {
  final SduButtonCellType _type;
  final Color? backgroundColor;
  final Widget? caption;
  final String? primaryLabel;
  final String? secondaryLabel;
  final VoidCallback? onPrimaryPressed;
  final VoidCallback? onSecondaryPressed;
  final SduButton? bccButton1;
  final SduButton? bccButton2;

  const SduButtonCell.row({
    super.key,
    this.backgroundColor,
    this.caption,
    this.secondaryLabel,
    this.primaryLabel,
    this.onPrimaryPressed,
    this.onSecondaryPressed,
    this.bccButton1,
    this.bccButton2,
  }) : _type = SduButtonCellType.row;

  const SduButtonCell.column({
    super.key,
    this.backgroundColor,
    this.caption,
    this.secondaryLabel,
    this.primaryLabel,
    this.onPrimaryPressed,
    this.onSecondaryPressed,
    this.bccButton1,
    this.bccButton2,
  }) : _type = SduButtonCellType.column;

  const SduButtonCell.customRow({
    super.key,
    this.backgroundColor,
    this.caption,
    this.secondaryLabel,
    this.primaryLabel,
    this.onPrimaryPressed,
    this.onSecondaryPressed,
    this.bccButton1,
    this.bccButton2,
  }) : _type = SduButtonCellType.customRow;

  const SduButtonCell.customColumn({
    super.key,
    this.backgroundColor,
    this.caption,
    this.secondaryLabel,
    this.primaryLabel,
    this.onPrimaryPressed,
    this.onSecondaryPressed,
    this.bccButton1,
    this.bccButton2,
  }) : _type = SduButtonCellType.customColumn;

  bool get hidePrimary => primaryLabel == null;

  bool get hideSecondary => secondaryLabel == null;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: switch (_type) {
        SduButtonCellType.column => Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (caption != null) caption!,
                if (caption != null) const SizedBox(height: 12),
                if (!hidePrimary)
                  SizedBox(
                    width: double.infinity,
                    child: SduButton.primary(
                      size: SduButtonSize.first,
                      label: primaryLabel,
                      onPressed: onPrimaryPressed,
                    ),
                  ),
                if (!hidePrimary && !hideSecondary) const SizedBox(height: 12),
              ],
            ),
          ),
        SduButtonCellType.row => Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (caption != null) caption!,
                if (caption != null) const SizedBox(height: 12),
                Row(
                  children: [
                    if (!hideSecondary)
                      Expanded(
                        child: SduButton.secondary(
                          size: SduButtonSize.first,
                          label: secondaryLabel,
                          onPressed: onSecondaryPressed,
                        ),
                      ),
                    if (!hidePrimary && !hideSecondary)
                      const SizedBox(width: 12),
                    if (!hidePrimary)
                      Expanded(
                        child: SduButton.primary(
                          size: SduButtonSize.first,
                          label: primaryLabel,
                          onPressed: onPrimaryPressed,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        SduButtonCellType.customRow => Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (caption != null) caption!,
                if (caption != null) const SizedBox(height: 12),
                Row(
                  children: [
                    if (bccButton1 != null) Expanded(child: bccButton1!),
                    if (bccButton1 != null && bccButton2 != null)
                      const SizedBox(width: 12),
                    if (bccButton2 != null) Expanded(child: bccButton2!),
                  ],
                ),
              ],
            ),
          ),
        SduButtonCellType.customColumn => Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (caption != null) caption!,
                if (caption != null) const SizedBox(height: 12),
                if (bccButton1 != null)
                  SizedBox(width: double.infinity, child: bccButton1!),
                if (bccButton1 != null && bccButton2 != null)
                  const SizedBox(height: 12),
                if (bccButton2 != null)
                  SizedBox(width: double.infinity, child: bccButton2!),
              ],
            ),
          ),
      },
    );
  }
}
