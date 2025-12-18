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
}
