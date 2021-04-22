import 'employee.dart';
import 'employeeTypes.dart';

class ShowEmployee {
  static void showContract(Employee employee) {
    print("""
    --------------------CONTRACT-----------------------
    name:             ${employee.getCompletName()}
    id:               ${employee.id} ${employee.getIdLetter()}
    holidays:         ${employee.holidays}
    minimumSalary:    ${employee.minimumSalary}
    monthlyIncentive: ${employee.monthlyIncentive}
    """);
  }
}

main(List<String> args) {
  Manager jefazo = new Manager("Pedro", "Motos", "de Guadalupe", 10378131);

  ShowEmployee.showContract(jefazo);
}
