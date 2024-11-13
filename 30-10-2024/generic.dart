// class Data<T>{
//   T data;
//   Data(this.data);
// }
// void main(){
//   Data<int> intData= Data<int>(10);
//   Data<double> doubleData= Data<double>(45.0);
//   print("Using Generics ->");
//   print("Integer Value is: ${intData.data}");
//   print("Double Value is: ${doubleData.data}");
// }

abstract class Map<K, V>{
  external factory Map();
}
T genericMethod<T>(T value){
  return value;
}
void main(){
  final info={
    'id':24,
    'name':'Vaishnava',
    'age':23  };
  print(info);

  print("Int: ${genericMethod<int>(10)}");
  print("Double: ${genericMethod<double>(10.5)}");
  print("String: ${genericMethod<String>("Hello")}");
}