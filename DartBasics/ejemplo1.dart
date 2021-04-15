void main(List<String> args) {
  //1 hello world
  print("Hello world");

  //2 variables
  var nil; //null var
  var name = "Maxim"; // variant, multiple types
  var cinco = 5;

  dynamic changable = 0; // can be changed its type
  changable = "0";
  changable = true;
  changable = 0.0;

  String nameStr = "Maxim";
  bool show = false;

  int num1 = 5; // intger or deciaml
  double num2 = 5.0; // decimal

  //3 
  print(r"Benito \n Floro");
  print("Benito\nFloro");

  print("""
  Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Maecenas nec tincidunt nulla. Sed gravida ultrices nunc, eu pulvinar quam.
  Phasellus pretium ut massa a ornare. Aenean est elit, ullamcorper vel scelerisque nec, rhoncus ac magna.
  Cras in metus velit. Nullam iaculis sit amet turpis vitae hendrerit. Aliquam in est magna.
  """);
  //3 constats, immutable
  // final: once init, cant be changed
  // const: must be init before compilation
  final int note = 10;
  const int note1 = 10;  
}
