import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '/core/resources/assets_manager.dart';

class CompletionAnimatedImage extends StatelessWidget {
  const CompletionAnimatedImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      AssetsManager.successLottieAnimation,
      width: 150,
      height: 150,
      repeat: false,
    );
  }
}
