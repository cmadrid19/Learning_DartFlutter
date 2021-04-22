import 'dart:io';
import 'Logic.dart';

main(List<String> args) {
  print("---Choose an option---");

  NumberPlay myNumberPlay;

  int option = 0;
  do {
    myMenu();
    option = int.parse(stdin.readLineSync().toString());

    switch (option) {
      case 1:
        myNumberPlay = new NumberPlay(askUserNumber());
        if (myNumberPlay.isNarcissistic()) {
          print("${myNumberPlay.number} is a narcissistic number");
        } else {
          print("${myNumberPlay.number} is NOT a narcissistic number");
        }
        break;
      case 2:
        myNumberPlay = new NumberPlay(askUserNumber());
        myNumberPlay.collatz();
        break;
      case 3:
        print("Good bye");
        exit(0);
      default:
        print("Option not valid.");
    }
  } while (option != 3);
}

int askUserNumber() {
  print("Enter a number: ");
  return int.parse(stdin.readLineSync().toString());
}

void myMenu() {
  print("1. Check if number is narcissistic.");
  print("2. Show collatz conjecture.");
  print("3. Exit");
  print("Option: ");
}
