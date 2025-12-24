/// Removes leading empty lines from the given text.
String removeLeadingEmptyLines(String text) {
  final lines = text.split('\n');

  for (int i = 0; i < lines.length; i++) {
    if (lines[i].trim().isNotEmpty) {
      return lines.sublist(i).join('\n');
    }
  }

  return '';
}

/// Replaces the text after the first newline character with ellipsis (...).
String replaceAfterFirstNewLineWithDots(String text) {
  final index = text.indexOf('\n');

  if (index == -1) {
    return text;
  }

  return '${text.substring(0, index)}...';
}
