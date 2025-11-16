import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/extensions/context_extensions.dart';
import '/core/widgets/spacing.dart';
import '/features/manage_task/presentation/controller/mange_task_cubit.dart';

class TitleTextField extends StatelessWidget {
  final String? initalValue;
  const TitleTextField({super.key, this.initalValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.localize.title, style: context.theme.textTheme.titleSmall),
        const VerticalSpace(5),
        TextFormField(
          decoration: InputDecoration(
            hint: Text(
              context.localize.titleHint,
              style: context.theme.textTheme.labelSmall,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          style: context.theme.textTheme.bodySmall,
          initialValue: initalValue,
          maxLines: null,
          onChanged: (value) {
            context.read<ManageTaskCubit>().setTitle(value);
          },
          onTapOutside: (event) {
            context.unfocus();
          },
        ),
      ],
    );
  }
}
