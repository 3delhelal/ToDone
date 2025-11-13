import 'package:flutter/material.dart';
import '/core/resources/colors_manager.dart';

class TaskCheckButton extends StatelessWidget {
  final void Function() callBack;
  final Color? borderColor;
  final Color? fillColor;
  final bool checked;
  const TaskCheckButton({
    super.key,
    required this.checked,
    required this.callBack,
    this.borderColor,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callBack,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: checked ? ColorsManager.checkBoxColor : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: ColorsManager.grey, width: 2),
        ),
        child: checked
            ? const Icon(Icons.check, size: 25, color: ColorsManager.white)
            : null,
      ),
    );
  }
}
