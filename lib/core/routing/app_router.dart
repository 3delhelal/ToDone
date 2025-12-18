import 'package:flutter/material.dart';
import '/core/routing/routes.dart';
import '/features/home/presentation/ui/home_screen.dart';
import '/features/manage_task/presentation/ui/manage_task_screen.dart';
import '/features/settings/ui/settings_screen.dart';
import '/features/theme/presentation/ui/theme_settings_screen.dart';
import '/features/pomodoro/presentation/ui/pomodoro_screen.dart';
import '/features/language/presentation/ui/change_language_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    debugPrint(
      "A ROUTE REQUEST HAS BEEN CREATE => ROUTE NAME: ${settings.name}, ARGUMENTS: ${settings.arguments}",
    );
    switch (settings.name) {
      case RoutesManager.home:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
          settings: settings,
        );
      case RoutesManager.manageTask:
        return MaterialPageRoute(
          builder: (_) => ManageTaskScreen(),
          settings: settings,
        );
      case RoutesManager.settings:
        return MaterialPageRoute(
          builder: (_) => SettingsScreen(),
          settings: settings,
        );
      case RoutesManager.themeSettings:
        return MaterialPageRoute(
          builder: (_) => ThemeSettingsScreen(),
          settings: settings,
        );
      case RoutesManager.pomodoro:
        return MaterialPageRoute(
          builder: (_) => PomoDoroScreen(),
          settings: settings,
        );
      case RoutesManager.languageSettings:
        return MaterialPageRoute(
          builder: (_) => LanguageSettingsScreen(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
          settings: settings,
        );
    }
  }
}
