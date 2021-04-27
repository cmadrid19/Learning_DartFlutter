import 'dart:io';

main(List<String> args) {
  List<int> numbers = [];

  for (int i = 0; i < 3; i++) {
    print("Enter number: ");
    numbers.add(int.parse(stdin.readLineSync().toString()));
  }
  
  numbers.sort();
  
  print("Min:    ${numbers.elementAt(0)}");
  print("Average: ${numbers.elementAt(1)}");
  print("Max:     ${numbers.elementAt(2)}");
}
