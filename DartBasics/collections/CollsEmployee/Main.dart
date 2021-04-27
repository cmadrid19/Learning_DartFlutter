import 'dart:io';
import 'Employee.dart';


List<Employee> employteeList = [];
main(List<String> args) {
  print("---Choose an option---");

  int option = 0;
  do {
    myMenu();
    option = int.parse(stdin.readLineSync().toString());

    switch (option) {
      case 1:
        employteeList.add(addEmployee());
        break;
      case 2:
        print("Surname's employee you want to remove: ");
        String surname = stdin.readLineSync().toString();
        employteeList.removeWhere((employee) => employee.surname == surname);
        break;
      case 3:
        showEmployees();
        break;
      case 4:
        print("Good bye");
        exit(0);
      default:
        print("Option not valid.");
    }
  } while (option != 4);
}

Employee addEmployee() {
  print("name: ");
  String name = stdin.readLineSync().toString();

  print("surname: ");
  String surname = stdin.readLineSync().toString();

  print("job address: ");
  String jobAddress = stdin.readLineSync().toString();

  print("personal address: ");
  String personalAddress = stdin.readLineSync().toString();

  print("vacation address: ");
  String vacationAddress = stdin.readLineSync().toString();

  print("civil state: ");
  String civilState = stdin.readLineSync().toString();
  
  print("nationality: ");
  String nationality = stdin.readLineSync().toString();

  print("sex: ");
  String sex = stdin.readLineSync().toString();

  print("years old: ");
  int yearsOld = int.parse(stdin.readLineSync().toString());

  return Employee(surname, name, jobAddress,
   personalAddress, vacationAddress, civilState, nationality, sex, yearsOld);
}

void showEmployees(){
  for  (Employee employee in employteeList){
    print(employee.toString());
  }
}

void myMenu() {
  print("1. Add employee.");
  print("2. Remove employee.");
  print("3. List employee");
  print("4. Exit");
  print("Option: ");
}
