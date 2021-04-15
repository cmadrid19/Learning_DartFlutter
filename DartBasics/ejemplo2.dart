import 'dart:io';

void main(List<String> args) {
  print("Enter your name: ");
  String name = stdin.readLineSync().toString();

  print("Enter your surname: ");
  String surname = stdin.readLineSync().toString();

  print("Enter your city: ");
  String city = stdin.readLineSync().toString();

  print("Your name is $name $surname, and you live in $city");
}
