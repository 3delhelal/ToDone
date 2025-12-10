import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/widgets/spacing.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/di.dart';
import 'components/complete_cycle_message.dart';
import 'components/completion_animated_image.dart';
import '../../../controller/pomodoro_cubit.dart';

class CycleCompletedBody extends StatefulWidget {
  const CycleCompletedBody({super.key});

  @override
  State<CycleCompletedBody> createState() => _CycleCompletedBodyState();
}

class _CycleCompletedBodyState extends State<CycleCompletedBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 900),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 0.85,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _controller.forward();
  }

  @override
  void dispose() {
    getIt<PomodoroCubit>().cancelPomodoro();

    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const VerticalSpace(70),
                const CompletionAnimatedImage(),
                const VerticalSpace(16),
                const CompleteCycleMessages(),
                const VerticalSpace(30),
                OutlinedButton(
                  onPressed: () {
                    context.read<PomodoroCubit>().cancelPomodoro();
                  },
                  child: Text(context.localize.startNewCycle),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
