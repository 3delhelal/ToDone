import 'package:flutter/material.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/helpers/converters.dart';
import '../../../domain/entities/language_entity.dart';

class LanguageOptionCard extends StatelessWidget {
  final LanguageEntity language;
  final String selectedLanguageCode;
  final Function()? callBack;

  const LanguageOptionCard({
    super.key,
    required this.language,
    required this.selectedLanguageCode,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = language.code == selectedLanguageCode;
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: Theme.of(context).cardColor,
        child: ListTile(
          onTap: callBack,
          title: Text(
            language.nativeName,
            style: context.theme.textTheme.titleSmall,
          ),
          subtitle: Text(
            TypeConverter.getLanguageName(context, language.code),
            style: context.theme.textTheme.labelMedium,
          ),
          trailing: Icon(
            isSelected
                ? Icons.radio_button_checked_rounded
                : Icons.radio_button_off,
            color: context.theme.colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
