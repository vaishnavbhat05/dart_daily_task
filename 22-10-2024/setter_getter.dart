class VGB{
  String FirstName;
  String LastName;
  int? age;

  VGB(this.FirstName,this.LastName);

  set setAge(int aged)=>this.age=aged;
  
  int? get getAge=>this.age;
}
main(){
  VGB v=new VGB("Vaishnav","Bhat");
  v.setAge=23;
  print("${v.FirstName} ${v.LastName}");
  print(v.getAge);
}