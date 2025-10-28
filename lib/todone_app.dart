import 'package:flutter/material.dart';
import '/core/constants/app_constants.dart';
import '/core/routing/routes.dart';
import '/core/routing/app_router.dart';

class ToDoneApp extends StatelessWidget {
  const ToDoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      initialRoute: RoutesManager.home,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
