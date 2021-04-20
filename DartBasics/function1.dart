import 'dart:io';

main(List<String> args) {
  print("Enter your name: ");
  String name = stdin.readLineSync().toString();

  print(nameUpperCase(name));
}

String nameUpperCase(String name) {
  return name.toUpperCase();
}
