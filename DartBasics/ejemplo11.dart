import 'dart:io';

main(List<String> args) {
  print("Enter your ID: ");
  int id = int.parse(stdin.readLineSync().toString());

  String letters = "trwagmyfpdxbnjzsqvhlcket";

  int rest = (id % 23).toInt();

  String letter = letters.substring(rest, rest + 1).toUpperCase();

  print("Your letter is $letter");
}
