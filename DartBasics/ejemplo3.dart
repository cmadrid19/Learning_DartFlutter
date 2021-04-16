import 'dart:io';

//variables conversion
main(List<String> args) {
  print("Enter a number: ");
  int num1 = int.parse(stdin.readLineSync().toString());

  print("Enter a number: ");
  int num2 = int.parse(stdin.readLineSync().toString());

  int total = num1 + num2;
  print("Sum: $total");
}
