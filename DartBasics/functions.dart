main(List<String> args) {
  helloWolrd(); //Void
  printMyText("Hello world"); // parameters
  print(firstChar("")); //return
  optionalParameters(15, 10);
}

void helloWolrd() {
  print("Hello world");
}

void printMyText(String txt) {
  print(txt);
}

String firstChar(String txt) {
  if (txt.length > 0) {
    return txt.substring(0, 1);
  } else {
    return "Parameter is empty";
  }
}

//optional parameters
void optionalParameters(int number, [int optionalParameter = 0]) {
  print("""
  requiered parameter: $number \n 
  optional parameter: $optionalParameter
  """);
}

//lambda
int ten() => 10;
int five() => 5;
int cero() => 0;
void message(String txt) => print(txt);
