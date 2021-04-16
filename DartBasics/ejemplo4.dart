import 'dart:io';

main(List<String> args) {
  print("Entre number: ");
  int num1 = int.parse(stdin.readLineSync().toString());

  print("Entre number: ");
  int num2 = int.parse(stdin.readLineSync().toString());

  print("Entre number: ");
  int num3 = int.parse(stdin.readLineSync().toString());

  int total = (num1 + num2 + num3);

  double average = (total / 3);
  print("The average is: $average");
}
