import 'package:flutter_bloc/flutter_bloc.dart';
import '/features/language/domain/repo/base_lanaguage_repo.dart';
import '/core/constants/language_constants.dart';
part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  final BaseLaguageRepository languageRepository;

  LanguageCubit(this.languageRepository)
    : super(LanguageState(LanguageConstants.enLanguageCode)) {
    _init();
  }
  void _init() {
    var languageCode = languageRepository.getUserPreferredLanguage();
    if (languageCode.isEmpty) {
      // Default Language
      emit(LanguageState(LanguageConstants.enLanguageCode));
    } else {
      emit(LanguageState(languageCode));
    }
  }

  void setLanguage(String languageCode) {
    emit(LanguageState(languageCode));
    languageRepository.setUserPreferredLanguage(languageCode);
  }
}
