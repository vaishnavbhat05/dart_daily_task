import 'dart:io';

void main(){
  File f1=File('04-11-2024/files/f4.txt');
  
  String cont=f1.readAsStringSync();
   print(cont);

  f1.writeAsStringSync("File content is overrided");

  String cont1=f1.readAsStringSync();
   print(cont1);
  
  File f2=File('04-11-2024/files/f5.txt');
  f2.writeAsStringSync("\nI am using append mode for not overwriting File",mode:FileMode.append);

  String cont2=f2.readAsStringSync();
   print(cont2);
}