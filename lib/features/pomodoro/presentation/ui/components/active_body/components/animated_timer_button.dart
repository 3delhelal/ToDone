import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '../../../../controller/pomodoro_cubit.dart';

class AnimatedTimerButton extends StatelessWidget {
  final bool isRunning;
  const AnimatedTimerButton({super.key, required this.isRunning});

  @override
  Widget build(BuildContext context) {
    final PomodoroCubit pomodoroCubit = context.read<PomodoroCubit>();
    final theme = context.theme;
    return SizedBox(
      width: 50,
      height: 50,
      child: Card(
        elevation: 2,
        color: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: IconButton(
          color: theme.scaffoldBackgroundColor,
          iconSize: 25,
          onPressed: () {
            if (isRunning) {
              pomodoroCubit.pause();
            } else {
              pomodoroCubit.resume();
            }
          },
          icon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            transitionBuilder: (child, anim) =>
                FadeTransition(opacity: anim, child: child),
            child: isRunning
                ? const Icon(Icons.pause, key: ValueKey('pause'))
                : const Icon(Icons.play_arrow, key: ValueKey('play')),
          ),
        ),
      ),
    );
  }
}
