import 'model/employee.dart';
// import 'model/secondNewEmployee.dart';
// import 'model/newEmployee.dart';

class NewEmployee extends Employee{
  
}
class SecondNewEmployee extends Employee{
 
}
void main(){
  SecondNewEmployee se=new SecondNewEmployee();
  se.empName();
  se.empAge();

  // NewEmployee ne=new NewEmployee();
  // ne.empName();
  // ne.empAge();
}