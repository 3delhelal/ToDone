import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/constants/language_constants.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/widgets/spacing.dart';
import '/features/language/presentation/controller/language_cubit.dart';
import '../../domain/entities/language_entity.dart';
import 'widgets/language_card.dart';

class LanguageSettingsScreen extends StatelessWidget {
  const LanguageSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.localize.selectLanguageMessage)),
      body: BlocBuilder<LanguageCubit, LanguageState>(
        builder: (context, languageState) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const VerticalSpace(40),
                  ...LanguageConstants.appLanguages.map<Widget>(
                    (LanguageEntity language) => LanguageOptionCard(
                      language: language,
                      selectedLanguageCode: languageState.languageCode,
                      callBack: () {
                        context.read<LanguageCubit>().setLanguage(
                          language.code,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
