import 'package:shared_preferences/shared_preferences.dart';
import '/core/constants/language_constants.dart';
import '/features/language/data/data_source/base_language_data_source.dart';

class LanguageDataSource implements BaseLanauageDataSource {
  LanguageDataSource(this._sharedPreferences);
  final SharedPreferences _sharedPreferences;
  @override
  void setUserPreferredLanguage(String preferredLanguage) {
    _sharedPreferences.setString(
      LanguageConstants.preferredlanguageKey,
      preferredLanguage,
    );
  }

  @override
  String getUserPreferredLanguage() {
    String? preferredLanguage = _sharedPreferences.getString(
      LanguageConstants.preferredlanguageKey,
    );
    if (preferredLanguage != null) {
      return preferredLanguage;
    } else {
      return "";
    }
  }

  @override
  void resetPreferredLanugage() {
    _sharedPreferences.remove(LanguageConstants.preferredlanguageKey);
  }
}
