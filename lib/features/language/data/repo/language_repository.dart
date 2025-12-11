import '/features/language/data/data_source/base_language_data_source.dart';
import '/features/language/domain/repo/base_lanaguage_repo.dart';

class LanguageRepository implements BaseLaguageRepository {
  final BaseLanauageDataSource dataSource;
  LanguageRepository(this.dataSource);
  @override
  void setUserPreferredLanguage(String preferredLanguage) {
    dataSource.setUserPreferredLanguage(preferredLanguage);
  }

  @override
  String getUserPreferredLanguage() {
    return dataSource.getUserPreferredLanguage();
  }

  @override
  void resetPreferredLanugage() {
    dataSource.resetPreferredLanugage();
  }
}
