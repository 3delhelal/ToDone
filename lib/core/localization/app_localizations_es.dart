import '/core/constants/language_constants.dart';
import 'app_localizations.dart';

/// The translations for Spanish (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([super.locale = LanguageConstants.esLanguageCode]);

  @override
  String get welcomeMessage => '¡Hola Mundo!';

  // Home Feature
  @override
  String get tasksList => 'Lista de tareas';
  @override
  String get unDone => 'Por hacer';
  @override
  String get done => 'Completadas';
  @override
  String get somethingWentWrong => 'Algo salió mal al obtener las tareas.';
  @override
  String get noTasksHere => 'No hay tareas aquí 👀.';
  @override
  String get confirmMessage => '¿Estás seguro?';
  @override
  String get confirmDeleteCardMsg => 'La tarea se eliminará permanentemente.';

  // Home Navigation Bar
  @override
  String get pomodoro => 'Pomodoro';
  @override
  String get settings => 'Ajustes';

  // Common Widgets
  @override
  String get cancel => 'Cancelar';
  @override
  String get confirm => 'Confirmar';

  // Manage Task
  @override
  String get addTask => 'Agregar tarea';
  @override
  String get editTask => 'Editar tarea';
  @override
  String get title => 'Título';
  @override
  String get titleHint => 'Ingresa el título de la tarea';
  @override
  String get note => 'Nota';
  @override
  String get noteHint => 'agrega una nota (opcional)';
  @override
  String get priority => 'Prioridad';
  @override
  String get lowPriority => 'Baja';
  @override
  String get meduimPriority => 'Media';
  @override
  String get highPriority => 'Alta';
  @override
  String get time => 'Tiempo';
  @override
  String get save => 'Guardar';

  // Settings Screen
  @override
  String get themeSettings => 'Tema';
  @override
  String get languageSettings => 'Idioma';

  // Theme Settings Screen
  @override
  String get manageThemeMessage => "Seleccionar tema";
  @override
  get systemDefaultTheme => "Por defecto del sistema";
  @override
  get lightTheme => "Tema claro";
  @override
  get darkTheme => "Tema oscuro";

  // Pomodoro
  @override
  String get pomodoroTitle => "Pomodoro";
  @override
  String get chooseSessionTime => "Elige el tiempo de sesión";
  @override
  String get minute => "Minuto";
  @override
  String get startSession => "Iniciar sesión";
  @override
  String get pomodoroHint1 => "¡Recordar!";
  @override
  String get pomodoroHint2 => "Los pequeños pasos conducen a grandes logros";

  @override
  String get createTaskMsg => "Elige una tarea para trabajar";
  @override
  String get startWIthoutTaskMsg => "Comenzar sin tarea";
  @override
  String get withoutTask => "Sin tarea";
  @override
  String get enjoyBreak => "¡Disfruta tu descanso!";
  @override
  String get focusTime => "Tiempo de enfoque";
  @override
  String get breakTime => "Tiempo de descanso";
  @override
  String get endBreak => "Terminar descanso";
  @override
  String get endSession => "Terminar sesión";
  @override
  String get sessionComplete => "¡Sesión completada 👏!";
  @override
  String get breakTimeMsg =>
      "Es momento de tomar un descanso y recargar tu enfoque.";

  @override
  String get startBreak => "Iniciar descanso";
  @override
  String get cycleCompleted => "Ciclo completado 🎉";

  @override
  String get finishedCycleMsg =>
      "¡Has completado un ciclo completo de Pomodoro! ¡Gran trabajo manteniéndote enfocado!";

  @override
  String get startNewCycle => "Iniciar nuevo ciclo";

  // Language Feature
  @override
  String get selectLanguageMessage => "Seleccionar idioma";
  @override
  String get unKnown => "Desconocido";

  // Languages
  @override
  String get ar => 'Árabe';
  @override
  String get en => 'Inglés';
  @override
  String get es => 'Español';
  @override
  String get de => 'Alemán';
  @override
  String get fr => 'Francés';

  // Privacy Policy
  @override
  String get privacyPolicy => 'Política de Privacidad';
  @override
  String get lastUpdatedMessage =>
      'Última actualización: 19 de febrero de 2026';
  @override
  String get introductionLabel => 'Introducción';
  @override
  String get introductionMessage =>
      "ToDone es una aplicación de productividad simple y enfocada (Tareas y Pomodoro) diseñada para ayudar a los usuarios a administrar sus tareas y concentrarse mejor, sin recopilar ni rastrear ningún dato personal.\n\nSu privacidad es extremadamente importante para nosotros. Esta Política de Privacidad explica de manera clara y transparente cómo ToDone maneja los datos de los usuarios.";
  @override
  String get informationCollectionAndUseLabel =>
      'Recopilación y Uso de la Información';
  @override
  String get informationCollectionAndUseParagraph =>
      'ToDone NO recopila ninguna información personal.\n\nEspecíficamente:';
  @override
  String get informationCollectionAndUseBullet1 =>
      'No recopilamos nombres, correos electrónicos, números de teléfono ni ningún identificador.';
  @override
  String get informationCollectionAndUseBullet2 =>
      'No recopilamos análisis de uso ni datos de comportamiento.';
  @override
  String get informationCollectionAndUseBullet3 =>
      'No rastreamos a los usuarios de ninguna manera.';
  @override
  String get informationCollectionAndUseBullet4 =>
      'No requerimos la creación de una cuenta ni el inicio de sesión.';
  @override
  String get everyThingIsLocallyMessage =>
      'Todas las tareas, configuraciones y datos de la aplicación permanecen localmente solo en el dispositivo del usuario.';
  @override
  String get permissionsLable => 'Permisos';
  @override
  String get permissionsAppNameMessage => 'ToDone:';
  @override
  String get permissionsAppMessage1 =>
      'No solicita ningún permiso del dispositivo.';
  @override
  String get permissionsAppMessage2 =>
      'No accede a la cámara, micrófono, almacenamiento, contactos, ubicación ni a ningún recurso del sistema.';
  @override
  String get permissionsAppMessage3 =>
      'Si se usan sonidos o temporizadores dentro de la aplicación, funcionan completamente dentro de la aplicación sin acceder ni compartir ningún dato externo.';
  @override
  String get dataStorageLable => 'Almacenamiento de Datos';
  @override
  String get dataStorageMessage1 =>
      'Todos los datos (tareas, temporizadores, preferencias) se almacenan localmente en el dispositivo.';
  @override
  String get dataStorageMessage2 => 'Ningún dato se sube a ningún servidor.';
  @override
  String get dataStorageMessage3 =>
      'No se utiliza almacenamiento en la nube ni bases de datos externas.';
  @override
  String get dataStorageMessage4 =>
      'Si el usuario elimina la aplicación, todos los datos almacenados se eliminan de forma permanente.';
  @override
  String get thirdPartyServicesLabel => 'Servicios de Terceros';
  @override
  String get thirdPartyServicesMessage => 'ToDone no utiliza:';
  @override
  String get thirdPartyServicesBullet1 => 'Servicios de análisis de terceros';
  @override
  String get thirdPartyServicesBullet2 => 'Redes publicitarias';
  @override
  String get thirdPartyServicesBullet3 => 'SDK de seguimiento';
  @override
  String get thirdPartyServicesBullet4 =>
      'API externas que recopilan datos del usuario';
  @override
  String get childrensPrivacy => "Privacidad de los Niños";
  @override
  String get childrensPrivacyMessage =>
      "ToDone no recopila a sabiendas ningún dato de nadie, incluidos niños menores de 13 años. Dado que no se recopila ningún dato en absoluto, la aplicación es segura para todos los grupos de edad.";
  @override
  String get changesToThisPrivacyPolicyLabel =>
      "Cambios en esta Política de Privacidad";
  @override
  String get changesToThisPrivacyPolicyMessage =>
      "Si esta Política de Privacidad se actualiza en el futuro, los cambios se reflejarán en esta página con una fecha de revisión actualizada.\n\nCualquier cambio respetará siempre el principio fundamental de ToDone: ninguna recopilación de datos, nunca.";
  @override
  String get contactUs => "Contáctenos";
  @override
  String get contactUsMessage =>
      "Si tiene alguna pregunta, inquietud o solicitud con respecto a esta Política de Privacidad o sus datos, comuníquese con nosotros directamente a:\n\nCorreo electrónico: 3delhelal@gmail.com\n\nToDone fue creado con principios que priorizan la privacidad. Sus datos siguen siendo suyos. Siempre.";
}
