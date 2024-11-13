mixin PetrolVarient{
  String name="Petrol";
  void PetrolBike(){
    print("Bike uses Petrol.");
  }
}
mixin DieselVarient{
  String name="Diesel";
  void DieselBus(){
    print("Buses uses Diesel.");
  }
  void PetrolBike(){
    print("Car uses Petrol.");
  }
}
mixin ElectricVarient{
  void ElectricScooty(){
    print('Now Latest Scooty uses Electric Current.');
  }
}
class Vehicle with DieselVarient,PetrolVarient,ElectricVarient{

}
void main(){
  Vehicle v= Vehicle();
  print(v.name);
  v.PetrolBike();
  v.DieselBus();
  v.ElectricScooty();
}
