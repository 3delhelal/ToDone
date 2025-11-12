import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/di.dart';
import '/core/constants/app_constants.dart';
import '/core/routing/routes.dart';
import '/core/routing/app_router.dart';
import '/core/localization/app_localizations.dart';
import '/core/theming/theme_manager.dart';
import 'features/home/presentation/controller/tasks_cubit.dart';

class ToDoneApp extends StatelessWidget {
  const ToDoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<TasksCubit>(create: (_) => getIt())],
      child: MaterialApp(
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
      ),
    );
  }
}
