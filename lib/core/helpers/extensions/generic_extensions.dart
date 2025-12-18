import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../app_enums.dart';
import '../../resources/assets_manager.dart';

extension TimeFormatter on DateTime {
  String toStringDate(BuildContext context) {
    var currentLanguageCode = Localizations.localeOf(context).languageCode;
    final day = DateFormat('EEE, MMM d', currentLanguageCode).format(this);
    final time = DateFormat('h:mm a', currentLanguageCode).format(this);
    return "$day  $time";
  }
}

// Sound Feature
extension SoundTypeExtension on SoundType {
  String get path {
    switch (this) {
      case SoundType.taskComplete:
        return AssetsManager.taskCompleteSound;
      case SoundType.taskDelete:
        return AssetsManager.taskDeleteSound;
      case SoundType.taskUndone:
        return AssetsManager.taskUndoneSound;
      case SoundType.taskCreated:
        return AssetsManager.taskCreatedSound;
      case SoundType.sessionFinished:
        return AssetsManager.sessionFinishedSound;
      case SoundType.breakFinished:
        return AssetsManager.breakFinishedSound;
    }
  }
}
