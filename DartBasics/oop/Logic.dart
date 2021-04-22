import 'dart:_js_helper';

class Dni {
  String letter = "";
  //int number = 00000000;
  final String LETTERS = "trwagmyfpdxbnjzsqvhlcket";

  Dni() {}

  String calculateLetter(int number) {
    int rest = (number % 23).toInt();
    return LETTERS.substring(rest, rest + 1);
  }
}
