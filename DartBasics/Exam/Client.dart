import 'dart:io';
import 'Logic.dart';

final List possibleConversions = [
  ["GRAMS", "OUNCES"],
  ["LITERS", "GALLONS"],
  ["METERS", "YARDS"],
  ["CELSIUS", "FAHRENHEIT"]
];
int mainOption = -1;

main(List<String> args) {
  UnitConverter myUnitConverter = UnitConverter();

  do {
    mainMenu();
    mainOption = int.parse(stdin.readLineSync().toString());

    switch (mainOption) {
      case 1:
        sideLogic();
        break;
      case 2:
        sideLogic();
        break;
      case 3:
        sideLogic();
        break;
      case 4:
        sideLogic();
        break;
      case 5:
        print("Good bye.");
        exit(0);
      default:
        print("Option not valid.");
    }
  } while (mainOption != 6);
}

void sideLogic() {
  int sideOption = -1;
  double numberToConvert = askUserNumber();
  do {
    sideMenu();
    sideOption = int.parse(stdin.readLineSync().toString());
    switch (sideOption) {
      case 1:
      case 2: //enter this code if marked 1 or 2
        double result =
            operationSelected(mainOption, sideOption, numberToConvert);
        print("""
                  $numberToConvert ${possibleConversions[mainOption - 1][sideOption - 1]} are $result ${possibleConversions[mainOption - 1].reversed.toList()[sideOption - 1]}
                  """);
        break;
      case 3:
        return;
      default:
        print("Option not valid.");
    }
  } while (sideOption != 3);
}

void mainMenu() {
  print("--------------------------------------");
  print("--------------------------------------");
  print("           WEIGHT CONVERTER            ");
  print("--------------------------------------");
  print("--------------------------------------");
  print("1. CONVERT GRAMS -- OUNCES");
  print("2. CONVERT LITERS -- GALLONS");
  print("3. CONVERT METERS -- YARDS");
  print("4. CONVERT CELSIUS -- FAHRENHEIT");
  print("5. Exit.");
  print("Select an option..............");
}

void sideMenu() {
  print(
      "1. CONVERT ${possibleConversions[mainOption - 1][0]} -- ${possibleConversions[mainOption - 1][1]}");
  print(
      "2. CONVERT ${possibleConversions[mainOption - 1][1]} -- ${possibleConversions[mainOption - 1][0]}");
  print("3. Return to main menu.");
  print("Select an option..............");
}

double askUserNumber() {
  bool correctInput = false;
  double number = 0.0;

  while (!correctInput) {
    try {
      print("Enter a number: ");
      number = double.parse(stdin.readLineSync().toString());
      correctInput = true;
    } on FormatException {
      print("You must enter a number.");
    } catch (error) {
      print("Unexpected error ocurred: ${error}");
    }
  }
  return number;
}
