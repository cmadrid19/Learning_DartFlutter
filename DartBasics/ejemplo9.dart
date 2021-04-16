import 'dart:io';

main(List<String> args) {
  print("Enter a year: ");

  int year = int.parse(stdin.readLineSync().toString());

  if (year % 4 == 0) {
    if (year % 400 == 0 || year % 100 != 0) {
      print("$year is a leap-year");
    } else {
      print("$year is NOT a leap-year");
    }
  } else {
    print("$year is NOT a leap-year");
  }
}
