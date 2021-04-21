import 'dart:_js_helper';

class Dni {
  String letter = "";
  //int number = 00000000;

  Dni() {}

  String calculateLetter(int number) {
    final String LETTERS = "trwagmyfpdxbnjzsqvhlcket";
    int rest = (number % 23).toInt();
    return LETTERS.substring(rest, rest + 1).toUpperCase();
  }
}
