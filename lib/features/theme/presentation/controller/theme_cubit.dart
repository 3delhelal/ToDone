import 'package:flutter/material.dart' show ThemeMode;
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/repo/base_theme_repo.dart';
import '/core/constants/app_constants.dart';
part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final BaseThemeRepository themeRepository;

  ThemeCubit(this.themeRepository) : super(ThemeState(ThemeMode.system)) {
    _init();
  }

  void _init() {
    emit(ThemeState(themeRepository.getUserPreferredTheme()));
  }

  void setPreferredTheme(ThemeMode changedTheme) {
    if (changedTheme != state.themeMode) {
      emit(ThemeState(changedTheme));
      if (changedTheme == ThemeMode.light) {
        themeRepository.setUserPreferredThemeMode(AppConstants.lightThemeValue);
      } else if (changedTheme == ThemeMode.dark) {
        themeRepository.setUserPreferredThemeMode(AppConstants.darkThemeValue);
      } else {
        themeRepository.removeUserPreferredTheme();
      }
    }
  }
}
