class Vehicle{
  String? name;
  
  Vehicle.customName(){
    print("Vehicle Name is Maruthi 800");
  }
}
class Audi extends Vehicle{
  Audi.withName(String carName):super.customName(){
    print("My car Name is BMW");
    this.name=carName;
  }
}
main(){
  Audi.withName("Audi");
}