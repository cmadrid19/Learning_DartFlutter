void main(){

  final List<String> DAYS = ["Saturday", "Sunday", "Monday", "Thuesday", "Wednesday", "Thursday", "Friday"];

  int day = 26;
  int month = 4;
  int year = 2021;

  if (month == 1) {
    month = 13;
    year--;
  } 
  if (month == 2) {
    month = 14;
    year--;
  } 

  //1
  int res1 = ((month +1) * 3) ~/ 5;
  //2
  int res2 = year ~/ 4;
  //3
  int res3 = year ~/ 100;
  //4
  int res4 = year ~/ 400;
  //5
  int res5 = day + (month * 2) + year + res1 + res2 - res3 +res4 + 2;
  //6
  int res6 = res5 ~/ 7;
  //7
  int res7 = res5 - (res6 * 7);

  print("Day of birth: ${DAYS[res7]}");

}
