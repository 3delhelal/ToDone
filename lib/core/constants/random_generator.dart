import 'dart:math';

class RandomGenerator {
  static final Random _random = Random();
  static const List<String> _lettersList = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'g',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
  ];
  static String generateID() {
    return List.generate(
      6,
      (index) => _lettersList[_random.nextInt(_lettersList.length)],
    ).join();
  }
}
