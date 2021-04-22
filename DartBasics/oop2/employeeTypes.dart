import 'employee.dart';

class Administrative extends Employee {
  Administrative(
    String name,
    String surname,
    String lastSurname,
    int id,
  ) {
    this.name = name;
    this.surname = surname;
    this.lastSurname = lastSurname;
    this.id = id;
    this.holidays = 22;
    this.minimumSalary = 720;
  }
}

class Manager extends Employee {
  Manager(
    String name,
    String surname,
    String lastSurname,
    int id,
  ) {
    this.name = name;
    this.surname = surname;
    this.lastSurname = lastSurname;
    this.id = id;
    this.holidays = 40;
    this.minimumSalary = 2000;
    this.monthlyIncentive = 10000 ~/ 12;
  }
}

class Informatic extends Employee {
  Informatic(
    String name,
    String surname,
    String lastSurname,
    int id,
  ) {
    this.name = name;
    this.surname = surname;
    this.lastSurname = lastSurname;
    this.id = id;
    this.holidays = 30;
    this.minimumSalary = 1500;
    this.monthlyIncentive = 300;
  }
}
