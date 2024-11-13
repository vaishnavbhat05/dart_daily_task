import 'dart:io';

void main() {
  try {
    // Specify a relative path, without subfolders, to avoid directory issues
    File file = File("04-11-2024/files/students.csv");
    file.writeAsStringSync("Name,Age\n");

    for (int i = 0; i < 3; i++) {
      stdout.write("Enter Name of Student ${i + 1}: ");
      String? name = stdin.readLineSync();

      stdout.write("Enter Age ${i + 1}: ");
      String? age = stdin.readLineSync();

      // Append the data to the CSV file
      file.writeAsStringSync('$name, $age\n', mode: FileMode.append);
    }
    print("Congrats, Values added successfully.");

    String contents=file.readAsStringSync();
     print(contents );
  } catch (e) {
    print("An error occurred: $e");
  }
}