import 'dart:io';

main(List<String> args) {
  var prizes = [124123.04, 34345.05, 23242.98, 5346.99, 1000.50, 500.00, 15.00];
  bool correctInput = false;

  while (!correctInput) {
    try {
      print("Enter prize number: ");
      int number = int.parse(stdin.readLineSync().toString().toLowerCase());
      print("Prize: ${prizes[number] - 1} €.");
      correctInput = true;
    } on FormatException {
      print("You must enter a number.");
    } on RangeError {
      print("Prize does not exist.");
    } catch(error) {
      print("Unexpected error ocurred: ${error}");
    }
  }
}
