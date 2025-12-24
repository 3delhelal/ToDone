import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/utils/text_utils.dart';
import '/features/manage_task/presentation/controller/mange_task_cubit.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/widgets/spacing.dart';

class NoteTextField extends StatelessWidget {
  final String? initalValue;
  const NoteTextField({super.key, this.initalValue});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.localize.note,
            style: context.theme.textTheme.titleMedium,
          ),
          const HorizontalSpace(10),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 10, bottom: 5),
                isDense: true,
                hint: Text(
                  context.localize.noteHint,
                  style: context.theme.textTheme.labelMedium,
                ),
              ),
              style: context.theme.textTheme.bodyMedium,
              initialValue: initalValue,
              maxLines: null,
              onChanged: (text) {
                context.read<ManageTaskCubit>().setNote(
                  removeLeadingEmptyLines(text),
                );
              },
              onTapOutside: (event) {
                context.unfocus();
              },
            ),
          ),
        ],
      ),
    );
  }
}
