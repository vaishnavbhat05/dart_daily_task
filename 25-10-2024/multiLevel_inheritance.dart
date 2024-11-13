// import 'model/newEmployee.dart';
import 'model/employee.dart';

class NewEmployee extends Employee{
  void empSalary(){
    print("Salary of Employee is: 10000");
  }
}
class SecondNewEmployee extends NewEmployee{
}

void main(){
  SecondNewEmployee od=new SecondNewEmployee();
  od.empName();
  od.empAge();
  od.empSalary();
  // NewEmployee ed=new NewEmployee();
  // ed.empAge();
  // ed.empName();
}

