import "dart:io";

main() {

    print("Introduce un numero: ");
    int number = int.parse(stdin.readLineSync().toString());
    


  print("Result: ");

  while(number > 1){
    //par
    if (number % 2 == 0){
      number = number ~/ 2;
    //impar
    } else { 
      number = number * 3 + 1;
    }
    print("$number \n");
  }
}