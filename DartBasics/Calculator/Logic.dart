import 'dart:io';

class Calculator {
  double number1 = 0;
  double number2 = 0;

  Calculator(double number1, double number2) {
    this.number1 = number1;
    this.number2 = number2;
  }

  double addUp(){
    return number1 + number2;
  }

  double substract(){
    return number1 - number2;
  }

  double multiply(){
    return number1 * number2;
  }

  double divide(){
    double result = 0;
    try {
      result = number1 / number2;
    } catch(error){
      print("Unexpected error ocurred: ${error}");
    }
    return result;
  }
}

Calculator askUserNumbers() {
  double number1 = 0;
  double number2 = 0;
  bool correctInput = false;

  while (!correctInput) {
    try {
      print("Number: ");
      number1 = double.parse(stdin.readLineSync().toString().toLowerCase());
      print("Number: ");
      number2 = double.parse(stdin.readLineSync().toString().toLowerCase());
      correctInput = true;
    } on FormatException {
      print("You must enter a number.");
    } catch (error) {
      print("Unexpected error ocurred: ${error}");
    }
  }

  return Calculator(number1, number2);
}
