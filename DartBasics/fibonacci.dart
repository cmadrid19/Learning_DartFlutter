import "dart:io";

main() {

  print("Hasta qué numero ver la secuencia: ");
  int limit = int.parse(stdin.readLineSync().toString());
  int secondLast = 0;
  int current = 1;
  int result = 1;
  
  print("FIBONACCI: ");
  while(result < limit){
    print("$result"); 
    result = current + secondLast;
    secondLast = current;
    current = result;
  }
}