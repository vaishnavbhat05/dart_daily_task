abstract class A{
  void foo();
}
abstract class B{
  void hoo();
}
class C extends A implements B{ //Here We cannot use mixin as this C with A,B
  @override
  void foo(){
    print("Hello A abstract Class Methods.");
  }

  @override
  void hoo(){
    print("Hello B Abstarct Class Methods");
  }
}
mixin D on E {
  void Soo(){
    print("Hello D Mixin Class.");
  }
}
class E {
  void Too(){
    print("Here We can use Mixin with only one class because of on Keyword.");
  }
}
class F extends E with D{

}

main(){
  C obj=C();
  obj.foo();
  obj.hoo();

  F obj1=F();
  obj1.Soo();
  obj1.Too();

}