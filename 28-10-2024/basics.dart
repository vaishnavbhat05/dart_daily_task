void main(){
  var str="vgb";
  print(str*4);
  print(str*0);
  print(str*-1);
  
  Greet g;
  g=sayHello;
  print(g("Namratha"));
  g=sayGoodBye;
  print(g("Ramesh"));
  g=wish;
  print(g("Vaishnav"));

  List<double> numbers=[2,4,-1,4,6,4,2];
  numbers.sort();
  print("$numbers");
  print("${numbers.reversed}");
}
typedef Greet(String name);
String sayHello(String name){
  return "Hello $name";
}
String sayGoodBye(String name){
  return "GoodBye $name";
}
String wish(String name){
  return "Happy birth Day $name";
}

