import 'dart:io';
void main(){
  File file=File("04-11-2024/files/test.txt");
  if (file.existsSync()){
   file.deleteSync();
   print("File Deleted");
  }
  else{
    print("File doesn't exist");
  }
}