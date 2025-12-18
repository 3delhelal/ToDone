import 'package:flutter/material.dart';
import '/core/helpers/extensions/context_extensions.dart';

class TimerCounter extends StatelessWidget {
  final int seconds;
  const TimerCounter({super.key, required this.seconds});
  String get _formattedTime {
    final mm = (seconds ~/ 60).toString().padLeft(2, '0');
    final ss = (seconds % 60).toString().padLeft(2, '0');
    return '$mm:$ss';
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _formattedTime,
      style: context.theme.textTheme.titleLarge!.copyWith(fontSize: 25),
    );
  }
}
