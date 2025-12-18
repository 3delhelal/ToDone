import 'package:flutter/material.dart';
import '/core/helpers/extensions/context_extensions.dart';

class AnimatedTimerFrame extends StatelessWidget {
  final double ringSize;
  final AnimationController controller;
  const AnimatedTimerFrame({
    super.key,
    required this.ringSize,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        return Transform.scale(
          scale: 1.0 + controller.value,
          child: Container(
            width: ringSize + 18,
            height: ringSize + 18,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: theme.colorScheme.primary.withAlpha(150),

              boxShadow: [
                BoxShadow(
                  color: theme.colorScheme.primary.withAlpha(21),
                  blurRadius: 18,
                  spreadRadius: 6,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
