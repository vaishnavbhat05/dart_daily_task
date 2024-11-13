// ignore_for_file: dead_code

Future<int>getFuture()async{
  await Future.delayed(Duration(seconds: 1)); //if we not use await program will break 
  
  // throw Exception('Something went wrong!'); // Simulated error
  
  return 42;
}
void handleValue(int value){
  print("Received Value is : $value");
}
void handleError(error){
  print("Error Occurred id : ${error.toString()}");
}
void main(){
  Future<int> f= getFuture();
  f
  .then((value) => handleValue(value))
  .catchError((error) => handleError(error))
  .whenComplete((){
    print("Printed after complition.");//if we use this await keyword is not required.
  });
}


