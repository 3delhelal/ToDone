import 'package:flutter/material.dart';
import 'package:todone/core/extensions/context_extensions.dart';

Future<bool> confirmDialog(
  BuildContext context, {
  required String title,
  String msg = '',
}) async {
  final confirmed = await showDialog<bool>(
    context: context,
    builder: (_) => AlertDialog(
      title: Text(title, style: context.theme.textTheme.titleSmall),
      content: msg.isEmpty
          ? null
          : Text(
              msg,
              style: context.theme.textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
      contentPadding: EdgeInsets.symmetric(vertical: 5),
      actionsPadding: EdgeInsets.all(7),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text(context.localize.cancel),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          child: Text(context.localize.confirm),
        ),
      ],
    ),
  );
  return confirmed ?? false;
}
