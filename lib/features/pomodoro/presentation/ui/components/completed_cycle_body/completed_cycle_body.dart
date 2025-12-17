import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todone/core/widgets/responsive_builder.dart';
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
    return ResponsiveBuilder(
      mobile: _buildMobileLayout(context, _fadeAnimation, _scaleAnimation),
      tablet: _buildTabletLayout(context, _fadeAnimation, _scaleAnimation),
    );
  }
}

Widget _buildMobileLayout(
  BuildContext context,
  Animation<double> fadeAnimation,
  Animation<double> scaleAnimation,
) {
  return Center(
    child: FadeTransition(
      opacity: fadeAnimation,
      child: ScaleTransition(
        scale: scaleAnimation,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const VerticalSpace(70), // Instead of header container
              const CompletionAnimatedImage(),
              const VerticalSpace(20),
              const CompleteCycleMessages(),
              const VerticalSpace(70),
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

Widget _buildTabletLayout(
  BuildContext context,
  Animation<double> fadeAnimation,
  Animation<double> scaleAnimation,
) {
  return Center(
    child: FadeTransition(
      opacity: fadeAnimation,
      child: ScaleTransition(
        scale: scaleAnimation,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CompletionAnimatedImage(),
              const CompleteCycleMessages(),
              const VerticalSpace(15),
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
