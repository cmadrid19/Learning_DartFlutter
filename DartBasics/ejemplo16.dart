import 'dart:io';
import 'dart:math';

//Narcissistic number
main(List<String> args) {
  print("Enter a number: ");
  String number = stdin.readLineSync().toString();

  num total = 0;
  for (int i = 0; i < number.length; i++) {
    int digit = int.parse(number.substring(i, i + 1).toString());
    num res = pow(digit, number.length);
    total += res;
  }

  if (total.toString() == number) {
    print("$number is a narcissistic number");
  } else {
    print("$number is NOT a narcissistic number");
  }
}
