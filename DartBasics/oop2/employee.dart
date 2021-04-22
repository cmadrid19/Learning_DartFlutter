abstract class Employee {
  String name = "";
  String surname = "";
  String lastSurname = "";

  int id = 0;

  int holidays = 0;
  double minimumSalary = 0.0;
  int monthlyIncentive = 0;

  String getCompletName() {
    return ("$surname $lastSurname $name");
  }

  String getIdLetter() {
    final String LETTERS = "trwagmyfpdxbnjzsqvhlcket";

    int rest = (id % 23).toInt();

    return LETTERS.substring(rest, rest + 1).toUpperCase();
  }
}
