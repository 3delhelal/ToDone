import 'package:flutter/material.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/widgets/spacing.dart';

class NumberPicker extends StatefulWidget {
  final String lable;
  final int minValue;
  final int maxValue;
  final int itemCount;
  final double height;
  final double width;
  final int initialIndex;
  final ValueChanged<int> onChanged;

  const NumberPicker({
    super.key,
    required this.lable,
    required this.minValue,
    required this.maxValue,
    required this.itemCount,
    required this.onChanged,
    this.initialIndex = 0,
    this.height = 50,
    this.width = 50,
  });

  @override
  State<NumberPicker> createState() => _NumberPickerState();
}

class _NumberPickerState extends State<NumberPicker> {
  late FixedExtentScrollController _controller;
  late List<int> _values;

  bool canScrollUp = false;
  bool canScrollDown = false;

  @override
  void initState() {
    super.initState();
    _values = _generateDistributedValues(
      widget.minValue,
      widget.maxValue,
      widget.itemCount,
    );

    _controller = FixedExtentScrollController(initialItem: widget.initialIndex);
    canScrollUp = widget.initialIndex > 0;
    canScrollDown = widget.initialIndex < _values.length - 1;
  }

  List<int> _generateDistributedValues(int min, int max, int count) {
    if (count <= 1) return [min.clamp(min, max)];
    final step = (max - min) / (count - 1);
    return List.generate(count, (i) => (min + step * i).round());
  }

  void _updateArrows() {
    setState(() {
      canScrollUp = _controller.selectedItem > 0;
      canScrollDown = _controller.selectedItem < _values.length - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (canScrollUp)
          const Icon(Icons.keyboard_double_arrow_up_rounded, size: 20)
        else
          const VerticalSpace(20),
        const VerticalSpace(5),
        SizedBox(
          height: widget.height,
          width: widget.width,
          child: ListWheelScrollView.useDelegate(
            controller: _controller,
            physics: const FixedExtentScrollPhysics(),
            itemExtent: 50,
            perspective: 0.001,
            diameterRatio: 1.2,
            onSelectedItemChanged: (index) {
              widget.onChanged(_values[index]);
              _updateArrows();
            },
            childDelegate: ListWheelChildBuilderDelegate(
              builder: (context, index) {
                if (index < 0 || index >= _values.length) return null;
                final value = _values[index];

                return AnimatedDefaultTextStyle(
                  duration: Duration(milliseconds: 200),
                  style: theme.textTheme.titleLarge!.copyWith(fontSize: 26),

                  child: Center(child: Text(value.toString())),
                );
              },
              childCount: _values.length,
            ),
          ),
        ),
        const VerticalSpace(5),

        if (canScrollDown)
          const Icon(Icons.keyboard_double_arrow_down_rounded, size: 20)
        else
          const VerticalSpace(20),

        const VerticalSpace(10),
        Text(
          widget.lable,
          style: context.theme.textTheme.bodyLarge!.copyWith(fontSize: 20),
        ),
      ],
    );
  }
}
