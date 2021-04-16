import 'dart:io';

main(List<String> args) {
  print("Enter number: ");
  int numb = int.parse(stdin.readLineSync().toString());

  double result = numb % 2;

  if (result == 0) {
    print("$numb is even");
  } else {
    print("$numb is odd");
  }
}
