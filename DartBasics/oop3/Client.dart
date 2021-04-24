import 'Logic.dart';

class Client {
  static void showValidation(Ean ean) {
    print("Code digits length:  ${ean.getCodeLength()}");
    print("Control digit:       ${ean.lastDigit}");
    if (ean.validateCode()) {
      print("EAN code ${ean.code}${ean.lastDigit} valid.");
    } else {
      print("EAN code ${ean.code}${ean.lastDigit} NOT valid.");
    }
  }
}

main(List<String> args) {
  Ean8 myEan8 = new Ean8("95050003"); //valid code
  Ean8 myEan81 = new Ean8("12341234");
  Ean13 myEan13 = new Ean13("8412584512541"); //valid code
  Client.showValidation(myEan8);
  Client.showValidation(myEan81);
  Client.showValidation(myEan13);
}
