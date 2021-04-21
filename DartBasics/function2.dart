import 'dart:io';
import 'dart:math';

main(List<String> args) {
  print("---Choose an option---");

  int option = 0;
  do {
    myMenu();
    option = int.parse(stdin.readLineSync().toString());

    switch (option) {
      case 1:
        print("Enter a number: ");
        int number = int.parse(stdin.readLineSync().toString());
        if (number.isNarcissistic()) {
          print("$number is a narcissistic number");
        } else {
          print("$number is NOT a narcissistic number");
        }
        break;
      case 2:
        collatz();
        break;
      case 3:
        print("Good bye");
        exit(0);
      default:
        print("Option not valid.");
    }
  } while (option != 3);
}

void myMenu() {
  print("1. Check if number is narcissistic.");
  print("2. Show collatz conjecture.");
  print("3. Exit");
  print("Option: ");
}

extension myExtension on int {
  bool isNarcissistic() {
    num total = 0;
    for (int i = 0; i < this.toString().length; i++) {
      int digit = int.parse(this.toString().substring(i, i + 1).toString());
      num res = pow(digit, this.toString().length);
      total += res;
    }
    return (total == this);
  }
}

void collatz() {
  print("Introduce un numero: ");
  int number = int.parse(stdin.readLineSync().toString());

  print("Result: ");

  while (number > 1) {
    //par
    if (number % 2 == 0) {
      number = number ~/ 2;
      //impar
    } else {
      number = number * 3 + 1;
    }
    print("$number \n");
  }
}
