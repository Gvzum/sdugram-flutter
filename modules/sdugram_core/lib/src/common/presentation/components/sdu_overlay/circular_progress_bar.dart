import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

const double _doublePi = 2 * pi;
const double _piDiv180 = pi / 180;

double _degToRad(double degree) {
  return degree * _piDiv180;
}

class _CircularProgressBar extends StatefulWidget {
  final ValueNotifier<double>? valueNotifier;

  const _CircularProgressBar({
    Key? key,
    this.valueNotifier,
  }) : super(key: key);

  @override
  __CircularProgressBarState createState() => __CircularProgressBarState();
}

class __CircularProgressBarState extends State<_CircularProgressBar>
    with SingleTickerProviderStateMixin {
  final double minSweepAngle = 0.015;
  late double circleLength;
  late double startAngle;
  late double correctAngle;

  late AnimationController animationController;

  late ValueNotifier<double> valueNotifier;
  late ValueNotifier<double>? defaultValueNotifier;

  @override
  void initState() {
    super.initState();
    if (widget.valueNotifier != null) {
      defaultValueNotifier = null;
      valueNotifier = widget.valueNotifier!;
    } else {
      defaultValueNotifier = ValueNotifier(100);
      valueNotifier = defaultValueNotifier!;
    }

    circleLength = pi * 100;
    final k = _doublePi / circleLength;

    correctAngle = 15 * k;
    startAngle = (correctAngle / 2);

    const animationDuration = Duration(seconds: 6);

    animationController = AnimationController(
      vsync: this,
      duration: animationDuration,
      value: 0.0,
      upperBound: 100,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: valueNotifier,
      builder: (BuildContext context, double value, Widget? child) {
        if (value > 100) {
          value = 100;
        } else if (value < 0) {
          value = 0;
        }
        if (value < animationController.value) {
          animationController.forward();
        } else {
          animationController.animateTo(value);
        }

        return AnimatedBuilder(
          animation: animationController,
          builder: (context, snapshot) {
            if ((value != animationController.upperBound) &&
                (animationController.value >= animationController.upperBound)) {
              animationController.reset();
              animationController.animateTo(value);
            }

            double sweepAngle;

            final reducedValue = animationController.value / 100;

            if (animationController.value == 0) {
              sweepAngle = 0;
            } else {
              sweepAngle = (_doublePi * reducedValue) - correctAngle;

              if (sweepAngle <= 0) {
                sweepAngle = minSweepAngle;
              }
            }

            final currentLength = reducedValue * circleLength;

            final isFullProgress = true &
                (animationController.value == animationController.upperBound);

            return Stack(
              alignment: Alignment.center,
              children: [
                Transform.rotate(
                  angle: _degToRad(-90),
                  child: CustomPaint(
                    size: const Size(100, 100),
                    painter: _CircularProgressBarPainter(
                      startAngle: startAngle,
                      sweepAngle: sweepAngle,
                      currentLength: currentLength,
                      isFullProgress: isFullProgress,
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    animationController.dispose();

    if (defaultValueNotifier != null) {
      defaultValueNotifier!.dispose();
    }

    super.dispose();
  }
}

class _CircularProgressBarPainter extends CustomPainter {
  final double startAngle;
  final double sweepAngle;
  final double currentLength;
  final bool isFullProgress;

  _CircularProgressBarPainter({
    required this.startAngle,
    required this.sweepAngle,
    required this.currentLength,
    required this.isFullProgress,
  });

  void _drawBack(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = kBackgroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    canvas.drawCircle(size.center(Offset.zero), size.width / 2, paint);
  }

  void _drawLessArcPart(Canvas canvas, Size size) {
    double angle = 0;
    double height = 0;

    if (currentLength < 10 / 2) {
      angle = 180;
      height = 10 - currentLength * 2;
    } else if (currentLength < 10) {
      angle = 0;
      height = currentLength * 2 - 10;
    } else {
      return;
    }

    final Paint pathPaint = Paint()
      ..shader = SweepGradient(tileMode: TileMode.decal, colors: [
        Colors.green,
        Colors.green,
      ]).createShader(Offset.zero & size)
      ..style = PaintingStyle.fill;

    final Offset circleOffset = Offset(
      (size.width / 2) * cos(startAngle) + size.center(Offset.zero).dx,
      (size.width / 2) * sin(startAngle) + size.center(Offset.zero).dy,
    );

    canvas.drawPath(
      Path.combine(
        PathOperation.xor,
        Path()
          ..addArc(
            Rect.fromLTWH(
              circleOffset.dx - 10 / 2,
              circleOffset.dy - 10 / 2,
              10,
              10,
            ),
            _degToRad(180),
            _degToRad(180),
          ),
        Path()
          ..addArc(
            Rect.fromCenter(
              center: circleOffset,
              width: 10,
              height: height,
            ),
            _degToRad(angle),
            _degToRad(180),
          ),
      ),
      pathPaint,
    );
  }

  void _drawArcPart(Canvas canvas, Size size) {
    final Rect arcRect = Offset.zero & size;
    final Paint arcPaint = Paint()
      ..shader = SweepGradient(tileMode: TileMode.decal, colors: [
        Colors.green,
        Colors.green,
      ]).createShader(arcRect)
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    canvas.drawArc(arcRect, startAngle, sweepAngle, false, arcPaint);
  }

  void _drawFullProgress(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    canvas.drawCircle(size.center(Offset.zero), size.width / 2, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    if (isFullProgress && (10 > 0)) {
      _drawFullProgress(canvas, size);
      return;
    }

    if (15 > 0) {
      _drawBack(canvas, size);
    }

    if (10 <= 0) {
      return;
    } else if (10 >= currentLength) {
      _drawLessArcPart(canvas, size);
    } else {
      _drawArcPart(canvas, size);
    }
  }

  @override
  bool shouldRepaint(_CircularProgressBarPainter oldDelegate) {
    return oldDelegate.currentLength != currentLength;
  }
}
