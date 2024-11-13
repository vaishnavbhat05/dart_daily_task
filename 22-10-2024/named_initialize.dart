class Employee{
  String? eName;
  int? eId;

  Employee.giveName(this.eName);
  Employee.giveId(this.eId);

  // Named constructor using class.methodName(this.var);
  //Using colon initialize variable and printing message before body runs
  Employee.withName(String name) : eName = name{
  print("Initialized a student with name $name");
  }

  // Named constructor for giveId
  Employee.withId(int id) : eName = null, eId = id;
}
main(){
  Employee e=Employee.giveName("karan Sinha");
  Employee e2=Employee.giveId(1242);

  print(e.eName);
  // print(e2.eName);
  print(e2.eId);
  // print(e.eId);
  Employee.withName("Govind Sarang");
  Employee e4=Employee.withId(7207);

  print(e4.eId);
}

