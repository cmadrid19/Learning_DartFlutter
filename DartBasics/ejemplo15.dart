import 'dart:io';

main(List<String> args) {
  print("Enter ISBN: ");
  String isbn = stdin.readLineSync().toString();

  if (isbn.length != 10) {
    return print("isbn must have 10 chars");
  }

  int total = 0;
  for (int i = 1; i <= 10; i++) {
    total += (i * int.parse(isbn[i - 1].toString()));
  }
  if (total % 2 == 0) {
    print("Correct ISBN.");
  } else {
    print("ISBN not correct.");
  }
}
