import 'dart:io';

import 'Logic.dart';

main(List<String> args) {

  int option = -1;
  Calculator myCalculator = Calculator(0, 0);

  do {
    myMenu();
    option = int.parse(stdin.readLineSync().toString());

    switch (option) {
      case 1:
        myCalculator = askUserNumbers();
        break;
      case 2:
        print("${myCalculator.number1} + ${myCalculator.number2} = ${myCalculator.addUp()}");
        break;
      case 3:
        print("${myCalculator.number1} - ${myCalculator.number2} = ${myCalculator.substract()}");
        break;
      case 4:
        print("${myCalculator.number1} * ${myCalculator.number2} = ${myCalculator.multiply()}");
        break;
      case 5:
        print("${myCalculator.number1} / ${myCalculator.number2} = ${myCalculator.divide()}");
        break;
      case 6:
        print("Good bye.");
        exit(0);
      default:
        print("Option not valid.");
    }
  } while (option != 6);
}

void myMenu() {
  print("1. Introduce numbers.");
  print("2. Add up.");
  print("3. Substract.");
  print("4. Multiply.");
  print("5. Divide.");
  print("6. Exit.");
  print("Option: ");
}
