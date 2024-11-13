class Employee {
  void EmpDetails(){
    print("Employee Name: Ganesh");
  }
}
class NewEmployee extends Employee{
  @override
  void EmpDetails(){
    super.EmpDetails();
    print("Employee Name: Vaishnav");
  }
}
void main(){
  NewEmployee ne=new NewEmployee();
  ne.EmpDetails();
}