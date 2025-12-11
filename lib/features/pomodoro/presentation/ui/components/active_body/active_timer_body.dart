import 'package:flutter/material.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/widgets/spacing.dart';
import '/features/pomodoro/presentation/ui/components/common/header_container.dart';
import 'components/active_timer_buttons.dart';
import 'components/session_type_widget.dart';
import 'components/task_name_widget.dart';
import 'components/animated_timer_frame.dart';
import 'components/animated_timer_button.dart';
import 'components/timer_counter.dart';
import '../common/pomodoro_ring.dart';

class ActiveTimerBody extends StatelessWidget {
  final bool isSession;
  final bool isRunning;
  final int totalSeconds;
  final int remainingSeconds;
  final AnimationController controller;
  final String? taskName;

  const ActiveTimerBody({
    super.key,

    required this.isSession,
    required this.isRunning,
    required this.totalSeconds,
    required this.remainingSeconds,
    required this.controller,
    this.taskName,
  });

  double get _progress {
    if (totalSeconds <= 0) return 0.0;
    final p = 1.0 - (remainingSeconds / totalSeconds);
    if (p.isNaN || p.isInfinite) return 0.0;
    return p.clamp(0.0, 1.0);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // make ring size responsive but never larger than available width and never zero
    final ringSize = (size.width * 0.65).clamp(120.0, size.width - 48.0);
    return Column(
      children: [
        HeaderContainer(
          child: isSession
              ? TaskNameWidget(taskName: taskName)
              : Text(
                  context.localize.enjoyBreak,
                  style: context.theme.textTheme.titleLarge,
                ),
        ),

        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              AnimatedTimerFrame(ringSize: ringSize, controller: controller),
              PomodoroRing(
                cirleSize: ringSize,
                progress: _progress,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const VerticalSpace(25),
                      TimerCounter(seconds: remainingSeconds),
                      const VerticalSpace(15),
                      AnimatedTimerButton(isRunning: isRunning),
                      const VerticalSpace(10),
                      SessionTypeWidget(isSession: isSession),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const VerticalSpace(30),
        ActiveTimerButtons(isSession: isSession),
      ],
    );
  }
}
