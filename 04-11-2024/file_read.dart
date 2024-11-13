import 'dart:io';
void main(){
  
  //txt
  File f1=File("/Users/vaishnavagopinathbhat/Desktop/Training/Dart/04-11-2024/files/f1.txt");

  String cont= f1.readAsStringSync();
  print(cont);

  print("File Path: ${f1.path}");
  print("File Absolute Path: ${f1.absolute.uri}");
  
  print("File Length: ${f1.lengthSync()} bytes");
  print("File Path: ${f1.lastModifiedSync}");
  
  //CSV 
  File f2=File("04-11-2024/files/f2.csv");

  String cont2= f2.readAsStringSync();

  //Split Operation
  List<String> sop2 =cont2.split("\n");
  print('\ncsv format:\n$cont2');
  print('\ncsv format to List:\n$sop2\n');

  // / print file
  print('---------------------');
  for (var line in sop2) {
    print(line);
  }
  
  //Substring Operation
  String cont4= f1.readAsStringSync().substring(0,10);
  print('\n$cont4');
  
  //Json
  File f3=File("04-11-2024/files/f3.json");

  String cont3= f3.readAsStringSync();
  print(cont3);
}