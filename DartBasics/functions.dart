main(List<String> args) {
  helloWolrd(); //Void
  printMyText("Hello world"); // parameters
  print(firstChar("")); //return
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

