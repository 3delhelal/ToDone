import 'package:flutter/material.dart';
import '/core/constants/app_constants.dart';
import '/core/routing/routes.dart';
import '/core/routing/app_router.dart';
import '/core/localization/app_localizations.dart';

class ToDoneApp extends StatelessWidget {
  const ToDoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      initialRoute: RoutesManager.home,
      onGenerateRoute: AppRouter.onGenerateRoute,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      locale: Locale(AppConstants.englishLocaleCode),
    );
  }
}
