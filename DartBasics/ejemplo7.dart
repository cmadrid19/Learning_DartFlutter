import 'dart:io';

main(List<String> args) {
  print("Enter number: ");
  int numb = int.parse(stdin.readLineSync().toString());

  if (numb > 0) {
    print("Absolute value: $numb");
  } else {
    int absolute = numb * -1;
    print("Absolute value $absolute");
  }
}
