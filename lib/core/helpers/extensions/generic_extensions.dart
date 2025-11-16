import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension TimeFormatter on DateTime {
  String toStringDate(BuildContext context) {
    var currentLanguageCode = Localizations.localeOf(context).languageCode;
    final day = DateFormat('EEE, MMM d', currentLanguageCode).format(this);
    final time = DateFormat('h:mm a', currentLanguageCode).format(this);
    return "$day  $time";
  }
}
