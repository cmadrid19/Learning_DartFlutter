import 'dart:math';

class NumberPlay {
  int number = 0;

  NumberPlay(int number) {
    this.number = number;
  }

  bool isNarcissistic() {
    num total = 0;
    for (int i = 0; i < this.number.toString().length; i++) {
      int digit =
          int.parse(this.number.toString().substring(i, i + 1).toString());
      num res = pow(digit, this.number.toString().length);
      total += res;
    }
    return (total == this.number);
  }

  void collatz() {
    int result = this.number;
    while (result > 1) {
      //par
      if (result % 2 == 0) {
        result = result ~/ 2;
      //impar
      } else {
        result = result * 3 + 1;
      }
      print("$result \n");
    }
  }
}
