import 'package:flutter/material.dart';
import 'package:sdugram_core/src/common/presentation/constants/constant_colors.dart';

class IconBackgroundView extends StatelessWidget {
  final Widget icon;
  final Color? backgroundColor;

  const IconBackgroundView({
    required this.icon,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kSecondaryPressedButtonColor,
      ),
      padding: const EdgeInsets.all(8),
      child: icon,
    );
  }
}
