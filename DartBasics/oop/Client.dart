import 'Logic.dart';
import 'dart:io';

main(List<String> args) {
  print("Enter your ID: ");
  int id = int.parse(stdin.readLineSync().toString());
  print(Dni().calculateLetter(id));
}
