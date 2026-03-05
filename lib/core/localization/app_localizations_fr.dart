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
  String get pomodoroHint1 => "Souviens-toi!";
  @override
  String get pomodoroHint2 => "Les petits pas mènent aux grandes réussites";

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

  // Privacy Policy
  @override
  String get privacyPolicy => 'Politique de confidentialité';
  @override
  String get lastUpdatedMessage => 'Dernière mise à jour : 19 février 2026';
  @override
  String get introductionLabel => 'Introduction';
  @override
  String get introductionMessage =>
      "ToDone est une application de productivité simple et ciblée (Tâches et Pomodoro) conçue pour aider les utilisateurs à gérer leurs tâches et à mieux se concentrer, sans collecter ni suivre de données personnelles.\n\nVotre confidentialité est extrêmement importante pour nous. Cette politique de confidentialité explique clairement et en toute transparence comment ToDone gère les données des utilisateurs.";
  @override
  String get informationCollectionAndUseLabel =>
      'Collecte et utilisation des informations';
  @override
  String get informationCollectionAndUseParagraph =>
      'ToDone ne collecte AUCUNE information personnelle.\n\nPlus précisément :';
  @override
  String get informationCollectionAndUseBullet1 =>
      'Nous ne collectons ni noms, ni e-mails, ni numéros de téléphone, ni aucun identifiant.';
  @override
  String get informationCollectionAndUseBullet2 =>
      'Nous ne collectons aucune donnée d\'analyse d\'utilisation ni de données comportementales.';
  @override
  String get informationCollectionAndUseBullet3 =>
      'Nous ne suivons les utilisateurs d\'aucune manière.';
  @override
  String get informationCollectionAndUseBullet4 =>
      'Nous n\'exigeons ni création de compte ni connexion.';
  @override
  String get everyThingIsLocallyMessage =>
      'Toutes les tâches, les paramètres et les données de l\'application restent stockés localement sur l\'appareil de l\'utilisateur uniquement.';
  @override
  String get permissionsLable => 'Autorisations';
  @override
  String get permissionsAppNameMessage => 'ToDone :';
  @override
  String get permissionsAppMessage1 =>
      'Ne demande aucune autorisation à l\'appareil.';
  @override
  String get permissionsAppMessage2 =>
      'N\'accède ni à la caméra, ni au microphone, ni au stockage, ni aux contacts, ni à la localisation, ni à aucune ressource du système.';
  @override
  String get permissionsAppMessage3 =>
      'Si des sons ou des minuteries sont utilisés dans l\'application, ils fonctionnent entièrement au sein de l\'application sans accéder à aucune donnée externe ni la partager.';
  @override
  String get dataStorageLable => 'Stockage des données';
  @override
  String get dataStorageMessage1 =>
      'Toutes les données (tâches, minuteries, préférences) sont stockées localement sur l\'appareil.';
  @override
  String get dataStorageMessage2 =>
      'Aucune donnée n\'est envoyée vers un serveur.';
  @override
  String get dataStorageMessage3 =>
      'Aucun stockage cloud ni aucune base de données externe ne sont utilisés.';
  @override
  String get dataStorageMessage4 =>
      'Si l\'utilisateur supprime l\'application, toutes les données stockées sont définitivement effacées.';
  @override
  String get thirdPartyServicesLabel => 'Services tiers';
  @override
  String get thirdPartyServicesMessage => 'ToDone n\'utilise pas :';
  @override
  String get thirdPartyServicesBullet1 => 'De services d\'analyse tiers';
  @override
  String get thirdPartyServicesBullet2 => 'De réseaux publicitaires';
  @override
  String get thirdPartyServicesBullet3 => 'De SDK de suivi';
  @override
  String get thirdPartyServicesBullet4 =>
      'D\'API externes qui collectent des données utilisateur';
  @override
  String get childrensPrivacy => "Confidentialité des enfants";
  @override
  String get childrensPrivacyMessage =>
      "ToDone ne collecte sciemment aucune donnée de qui que ce soit, y compris des enfants de moins de 13 ans. Étant donné qu'aucune donnée n'est collectée, l'application est sûre pour tous les groupes d'âge.";
  @override
  String get changesToThisPrivacyPolicyLabel =>
      "Modifications de cette politique de confidentialité";
  @override
  String get changesToThisPrivacyPolicyMessage =>
      "Si cette politique de confidentialité est mise à jour à l'avenir, les modifications seront reflétées sur cette page avec une date de révision mise à jour.\n\nToute modification respectera toujours le principe fondamental de ToDone : aucune collecte de données, jamais.";
  @override
  String get contactUs => "Nous contacter";
  @override
  String get contactUsMessage =>
      "Si vous avez des questions, des préoccupations ou des demandes concernant cette politique de confidentialité ou vos données, veuillez nous contacter directement à l'adresse :\n\nE-mail : 3delhelal@gmail.com\n\nToDone a été conçu selon les principes de primauté de la confidentialité. Vos données restent les vôtres. Toujours.";
}
