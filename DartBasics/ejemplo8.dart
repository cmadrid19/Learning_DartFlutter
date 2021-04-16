import 'dart:io';

main(List<String> args) {
  print("Enter one letter: ");
  String letter = stdin.readLineSync().toString().toLowerCase();

  if (letter == "a" ||
      letter == "e" ||
      letter == "i" ||
      letter == "o" ||
      letter == "u") {
    print("$letter is vocal");
  } else {
    print("$letter is consonant");
  }
}
