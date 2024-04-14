import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

Future<void> bccPopover<T>({
  required BuildContext context,
  required List<BccPopoverPage> pages,
  Color backgroundColor = Colors.transparent,
  String? barrierLabel,
  double? elevation,
  ShapeBorder? shape,
  Clip? clipBehavior,
  BoxConstraints? constraints,
  Color? barrierColor,
  bool isScrollControlled = true,
  bool useRootNavigator = true,
  bool isDismissible = true,
  bool enableDrag = true,
  bool? showDragHandle,
  bool useSafeArea = true,
  RouteSettings? routeSettings,
  AnimationController? transitionAnimationController,
  Offset? anchorPoint,
}) {
  return showModalBottomSheet<T>(
    context: context,
    backgroundColor: backgroundColor,
    barrierLabel: barrierLabel,
    elevation: elevation,
    shape: shape,
    clipBehavior: clipBehavior,
    constraints: constraints,
    barrierColor: barrierColor ?? Colors.black.withOpacity(0.2),
    isScrollControlled: isScrollControlled,
    useRootNavigator: useRootNavigator,
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    showDragHandle: showDragHandle,
    useSafeArea: useSafeArea,
    routeSettings: routeSettings,
    transitionAnimationController: transitionAnimationController,
    anchorPoint: anchorPoint,
    builder: (context) => Stack(
      children: [
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
            ),
            child: Container(color: Colors.transparent),
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          clipBehavior: Clip.hardEdge,
          child: Container(
            width: double.infinity,
            color: kBackgroundColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // const _BccPopoverDragHandle(),
                _BccPopoverBody(pages: pages),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

final class BccPopoverPage {
  final Widget Function(BuildContext) pageBuilder;
  final String routeName;

  const BccPopoverPage({required this.pageBuilder, required this.routeName});
}

class _BccPopoverBody extends StatefulWidget {
  const _BccPopoverBody({required this.pages});

  final List<BccPopoverPage> pages;

  @override
  State<_BccPopoverBody> createState() => _BccPopoverBodyState();
}

class _BccPopoverBodyState extends State<_BccPopoverBody> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) {
              return widget.pages
                  .firstWhere((e) => e.routeName == settings.name)
                  .pageBuilder
                  .call(context);
            },
          );
        },
      ),
    );
  }
}

