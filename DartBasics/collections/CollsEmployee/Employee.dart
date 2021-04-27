class Employee {
  String surname = "",
      name = "",
      jobAddress = "",
      personalAddress = "",
      vacationAddress = "",
      civilState = "",
      nationality = "",
      sex = "";
  int yearsOld = 0;

  Employee(
      String surname,
      String name,
      String jobAddress,
      String personalAddress,
      String vacationAddress,
      String civilState,
      String nationality,
      String sex,
      int yearsOld) {
    this.name = name;
    this.surname = surname;
    this.jobAddress = jobAddress;
    this.personalAddress = personalAddress;
    this.vacationAddress = vacationAddress;
    this.civilState = civilState;
    this.nationality = nationality;
    this.sex = sex;
    this.yearsOld = yearsOld;
  }

  String toString() {
    return """
      $surname $name $jobAddress $personalAddress $vacationAddress $civilState $nationality $sex $yearsOld
    """;
  }
}
