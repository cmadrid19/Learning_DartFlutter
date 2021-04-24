abstract class Ean {
  String code = "";
  String lastDigit = "";

  int _getOddTotal() {
    int total = 0;
    for (int i = 1; i == code.length; i++) {
      total += int.parse(code.substring(i, i + 1));
      i++;
    }
    return total;
  }

  int _getPairTotal() {
    int total = 0;
    for (int i = 0; i < code.length; i++) {
      total += int.parse(code.substring(i, i + 1));
      i++;
    }
    return total;
  }

  int getCodeLength() {
    return this.code.length;
  }

  bool validateCode();
}

class Ean8 extends Ean {
  Ean8(String rowCode) {
    if (rowCode.length != 8) {
      throw ("Ean must have 8 digits");
    }
    this.code = rowCode.substring(0, rowCode.length - 1);
    this.lastDigit = rowCode.substring(rowCode.length - 1, rowCode.length);
  }

  @override
  bool validateCode() {
    int validationResult = _getPairTotal() * 3;
    validationResult = _getOddTotal() + validationResult;
    validationResult = validationResult % 10;
    validationResult = 10 - validationResult;
    if (validationResult == 10) validationResult = 0;
    return (validationResult == int.parse(lastDigit));
  }
}

class Ean13 extends Ean {
  Ean13(String rowCode) {
    if (rowCode.length != 13) {
      throw ("Ean must have 13 digits");
    }
    this.code = rowCode.substring(0, rowCode.length - 1);
    this.lastDigit = rowCode.substring(rowCode.length - 1, rowCode.length);
  }

  @override
  bool validateCode() {
    int validationResult = _getOddTotal() * 3;
    validationResult = _getPairTotal() + validationResult;
    validationResult = validationResult % 10;
    validationResult = 10 - validationResult;
    if (validationResult == 10) validationResult = 0;
    return (validationResult == int.parse(lastDigit));
  }
}
