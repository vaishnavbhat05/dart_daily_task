
import '../25-10-2024/model/newEmployee.dart';
import 'access_modifiers.dart';

void main() {
  // Create an object of Student class
  Student st = new Student();
  // setting values to the object using setter
  st.firstName = "John";
  st.lastName = "Doe";
  st.age = 20;
  // Display the values of the object
  print("Full Name: ${st.fullName}");
  print("Age: ${st.age}");
  
  NewEmployee p=NewEmployee();
  p.empName();
  p.empAge();

  // person p1=person();
  // print("Public Var1 value:${p1.var2}");
}