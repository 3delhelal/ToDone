import '/core/constants/language_constants.dart';
import 'app_localizations.dart';

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([super.locale = LanguageConstants.frLanguageCode]);

  @override
  String get welcomeMessage => 'Bonjour le monde !';

  // Home Feature
  @override
  String get tasksList => 'Liste des tâches';
  @override
  String get unDone => 'À faire';
  @override
  String get done => 'Terminées';
  @override
  String get somethingWentWrong =>
      'Une erreur s\'est produite lors de la récupération des tâches.';
  @override
  String get noTasksHere => 'Aucune tâche ici 👀.';
  @override
  String get confirmMessage => 'Êtes-vous sûr ?';
  @override
  String get confirmDeleteCardMsg => 'La tâche sera supprimée définitivement.';

  // Home Navigation Bar
  @override
  String get pomodoro => 'Pomodoro';
  @override
  String get settings => 'Paramètres';

  // Common Widgets
  @override
  String get cancel => 'Annuler';
  @override
  String get confirm => 'Confirmer';

  // Manage Task
  @override
  String get addTask => 'Ajouter une tâche';
  @override
  String get editTask => 'Modifier la tâche';
  @override
  String get title => 'Titre';
  @override
  String get titleHint => 'Entrez le titre de la tâche';
  @override
  String get note => 'Note';
  @override
  String get noteHint => 'ajoutez une note (optionnel)';
  @override
  String get priority => 'Priorité';
  @override
  String get lowPriority => 'Faible';
  @override
  String get meduimPriority => 'Moyenne';
  @override
  String get highPriority => 'Élevée';
  @override
  String get time => 'Temps';
  @override
  String get save => 'Enregistrer';

  // Settings Screen
  @override
  String get themeSettings => 'Thème';
  @override
  String get languageSettings => 'Langue';

  // Theme Settings Screen
  @override
  String get manageThemeMessage => "Sélectionner le thème";
  @override
  get systemDefaultTheme => "Par défaut du système";
  @override
  get lightTheme => "Thème clair";
  @override
  get darkTheme => "Thème sombre";

  // Pomodoro
  @override
  String get pomodoroTitle => "Pomodoro";
  @override
  String get chooseSessionTime => "Choisissez le temps de session";
  @override
  String get minute => "Minute";
  @override
  String get startSession => "Commencer la session";
  @override
  String get pomodoroQuestion => "Qu'est-ce que Pomodoro ?";
  @override
  String get pomodoroAnswer =>
      "Pomodoro est une technique de gestion du temps qui vous aide à rester concentré en travaillant par courtes périodes (appelées sessions) suivies de courtes pauses.";

  @override
  String get createTaskMsg => "Choisissez une tâche sur laquelle travailler";
  @override
  String get startWIthoutTaskMsg => "Commencer sans tâche";
  @override
  String get withoutTask => "Sans tâche";
  @override
  String get enjoyBreak => "Profitez de votre pause !";
  @override
  String get focusTime => "Temps de concentration";
  @override
  String get breakTime => "Temps de pause";
  @override
  String get endBreak => "Terminer la pause";
  @override
  String get endSession => "Terminer la session";
  @override
  String get sessionComplete => "Session terminée 👏";
  @override
  String get breakTimeMsg =>
      "Il est temps de faire une pause et de recharger votre concentration.";

  @override
  String get startBreak => "Commencer la pause";
  @override
  String get cycleCompleted => "Cycle terminé 🎉";

  @override
  String get finishedCycleMsg =>
      "Vous avez terminé un cycle complet Pomodoro ! Excellent travail !";

  @override
  String get startNewCycle => "Commencer un nouveau cycle";

  // Language Feature
  @override
  String get selectLanguageMessage => "Sélectionner la langue";
  @override
  String get unKnown => "Inconnu";

  // Languages
  @override
  String get ar => 'Arabe';
  @override
  String get en => 'Anglais';
  @override
  String get es => 'Espagnol';
  @override
  String get de => 'Allemand';
  @override
  String get fr => 'Français';
}
