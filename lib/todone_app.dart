import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/di.dart';
import '/core/constants/app_constants.dart';
import '/core/routing/routes.dart';
import '/core/routing/app_router.dart';
import '/core/localization/app_localizations.dart';
import '/core/theming/theme_manager.dart';
import 'features/home/presentation/controller/tasks_cubit.dart';
import '/features/manage_task/presentation/controller/mange_task_cubit.dart';
import 'features/theme/presentation/controller/theme_cubit.dart';
import '/features/pomodoro/presentation/controller/pomodoro_cubit.dart';
import '/features/language/presentation/controller/language_cubit.dart';

class ToDoneApp extends StatelessWidget {
  const ToDoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TasksCubit>(create: (_) => getIt()),
        BlocProvider<ManageTaskCubit>(create: (_) => getIt()),
        BlocProvider<ThemeCubit>(create: (_) => getIt()),
        BlocProvider<PomodoroCubit>(create: (_) => getIt()),
        BlocProvider<LanguageCubit>(create: (_) => getIt()),
      ],
      child: BlocSelector<LanguageCubit, LanguageState, String>(
        selector: (languageCubit) => languageCubit.languageCode,
        builder: (context, languageCode) {
          return BlocSelector<ThemeCubit, ThemeState, ThemeMode>(
            selector: (state) => state.themeMode,
            builder: (context, themeMode) {
              return SafeArea(
                bottom: true,
                top: false,
                right: false,
                left: false,
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: AppConstants.appName,
                  initialRoute: RoutesManager.home,
                  onGenerateRoute: AppRouter.onGenerateRoute,
                  supportedLocales: AppLocalizations.supportedLocales,
                  localizationsDelegates:
                      AppLocalizations.localizationsDelegates,
                  locale: Locale(languageCode),
                  themeMode: themeMode,
                  theme: ThemeManager.lightTheme,
                  darkTheme: ThemeManager.darkTheme,
                  themeAnimationDuration: Duration.zero,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
