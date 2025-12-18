import '/features/language/domain/entities/language_entity.dart';

class LanguageConstants {
  LanguageConstants._(); // Private constructor to prevent instantiation

  static const String preferredlanguageKey =
      "preferredLanguage"; // Shared Preferences Key
  static const String enLanguageCode = "en";
  static const String arLanguageCode = "ar";
  static const String esLanguageCode = "es";
  static const String deLanguageCode = "de";
  static const String frLanguageCode = "fr";

  static const List<LanguageEntity> appLanguages = [
    LanguageEntity(code: enLanguageCode, nativeName: 'English'),
    LanguageEntity(code: arLanguageCode, nativeName: 'العربية'),
    LanguageEntity(code: esLanguageCode, nativeName: 'Español'),
    LanguageEntity(code: deLanguageCode, nativeName: 'Deutsch'),
    LanguageEntity(code: frLanguageCode, nativeName: 'Français'),
  ];
}
