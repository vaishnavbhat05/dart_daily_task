abstract class Person{
  void personDetails();
}
class OldPerson extends Person{
  @override
  void personDetails(){
    print("Hello My Abstract Method.");
  }
}
void main(){
  OldPerson op=new OldPerson();
  op.personDetails();
}