import 'package:flutter/material.dart';
import '/core/constants/app_constants.dart';
import '/core/extensions/context_extensions.dart';
import '/todone_app.dart';

void main() {
  runApp(const ToDoneApp());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppConstants.appName,
          style: context.theme.textTheme.titleMedium,
        ),
      ),
      body: Center(
        child: Text(
          context.localize.welcomeMessage,
          style: context.theme.textTheme.bodyMedium,
        ),
      ),
    );
  }
}
