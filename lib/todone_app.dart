import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/constants/app_constants.dart';
import '/core/routing/routes.dart';
import '/core/routing/app_router.dart';
import '/core/localization/app_localizations.dart';
import '/core/theming/theme_manager.dart';

class ToDoneApp extends StatelessWidget {
  const ToDoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
    ); // This line to support font adaptation in the textTheme of app theme
    return ScreenUtilInit(
      designSize: const Size(392, 856),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppConstants.appName,
          initialRoute: RoutesManager.home,
          onGenerateRoute: AppRouter.onGenerateRoute,
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          locale: Locale(AppConstants.englishLocaleCode),
          themeMode: ThemeMode.system,
          theme: ThemeManager.lightTheme,
          darkTheme: ThemeManager.darkTheme,
          themeAnimationDuration: Duration.zero,
        );
      },
    );
  }
}
