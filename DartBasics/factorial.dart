import "dart:io";

main() {
  print("Introduce un numero: ");
  int number = int.parse(stdin.readLineSync().toString());
  int result = number;

  while(number > 1){
    number--;
    result *= number;
  }

  print("El facotrial de $number es: $result");

  
}