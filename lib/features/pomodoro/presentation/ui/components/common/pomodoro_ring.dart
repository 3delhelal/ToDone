import 'dart:math';
import 'package:flutter/material.dart';
import '/core/resources/colors_manager.dart';
import '/core/helpers/extensions/context_extensions.dart';

class PomodoroRing extends StatelessWidget {
  final double cirleSize;
  final double progress;
  final Widget child;
  final Color? animatedBorderColor;

  const PomodoroRing({
    super.key,
    required this.cirleSize,
    required this.progress,
    required this.child,
    this.animatedBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: cirleSize, height: cirleSize),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.theme.scaffoldBackgroundColor,
        ),
        child: CustomPaint(
          painter: _RingPainter(
            progress: progress,
            progressColor: context.theme.colorScheme.primary.withAlpha(235),
            backgroundColor: ColorsManager.lightGrey,
          ),
          child: child,
        ),
      ),
    );
  }
}

class _RingPainter extends CustomPainter {
  final double progress;
  final Color progressColor;
  final Color backgroundColor;

  _RingPainter({
    required this.progress,
    required this.progressColor,
    required this.backgroundColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // safety guards
    final safeProgress = (progress.isNaN || progress.isInfinite)
        ? 0.0
        : progress.clamp(0.0, 1.0);
    if (size.width <= 0 || size.height <= 0) return;

    final stroke = (size.width * 0.065).clamp(2.0, size.width / 3);
    final rect = Offset.zero & size;
    final center = rect.center;
    final radius = (size.width - stroke) / 2;

    // background ring
    final bgPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke;

    canvas.drawCircle(center, radius, bgPaint);

    if (safeProgress <= 0) return;
    // progress ring
    final progPaint = Paint()
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = stroke;

    final startAngle = -pi / 2;
    final sweep = 2 * pi * safeProgress;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweep,
      false,
      progPaint,
    );
  }

  @override
  bool shouldRepaint(covariant _RingPainter oldDelegate) =>
      oldDelegate.progress != progress ||
      oldDelegate.progressColor != progressColor ||
      oldDelegate.backgroundColor != backgroundColor;
}
