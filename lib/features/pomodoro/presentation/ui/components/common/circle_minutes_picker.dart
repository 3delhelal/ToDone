import 'package:flutter/material.dart';
import '/core/widgets/number_picker.dart';
import '/core/widgets/spacing.dart';
import '/core/helpers/extensions/context_extensions.dart';
import 'pomodoro_ring.dart';

class CircleMinutesPicker extends StatelessWidget {
  final double ringSize;
  final String lable;
  final int initialIndex;
  final int minValue;
  final int maxValue;
  final int itemCount;
  final Function(int value) onChange;
  const CircleMinutesPicker({
    super.key,
    required this.ringSize,
    required this.lable,
    required this.initialIndex,
    required this.minValue,
    required this.maxValue,
    required this.itemCount,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: ringSize + 18,
          height: ringSize + 18,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.theme.colorScheme.primary.withAlpha(150),
            boxShadow: [
              BoxShadow(
                color: context.theme.colorScheme.primary.withAlpha(21),
                blurRadius: 18,
                spreadRadius: 6,
              ),
            ],
          ),
        ),
        PomodoroRing(
          cirleSize: ringSize,
          progress: 1,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const VerticalSpace(25),
                NumberPicker(
                  lable: lable,
                  minValue: minValue,
                  maxValue: maxValue,
                  itemCount: itemCount,
                  initialIndex: initialIndex,
                  onChanged: onChange,
                ),

                const VerticalSpace(10),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
