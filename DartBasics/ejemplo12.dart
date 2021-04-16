import 'dart:io';

//Switch case
main(List<String> args) {
  print("Enter your ID: ");
  int id = int.parse(stdin.readLineSync().toString());

  //String letters = "trwagmyfpdxbnjzsqvhlcket";

  int rest = (id % 23).toInt();

  switch (rest) {
    case 0:
      print("t");
      break;
    case 1:
      print("r");
      break;
    case 2:
      print("w");
      break;
    case 3:
      print("a");
      break;
    case 4:
      print("g");
      break;
    default:
      print("Can not find letter.");
      break;
  }
}
