import 'dart:io';

final  addNum = (int a, int b) => a + b;
final  subNum = (int a, int b) => a - b;
final Function mulNum = (int a, int b) => a * b;
final Function divNum = (int a, int b) => a / b;
void main() {
  print("Simple Calculator");
  while (true) {

    int choice = requestOperation();
    // Exit if the user chooses to exit
    if (choice == 5) {
      print("Exiting the calculator. Goodbye!");
      break;
    }

  stdout.write("Enter first number: ");
  int a = int.parse(stdin.readLineSync()!);

  // Get user input for the second number
  stdout.write("Enter second number: ");
  int b = int.parse(stdin.readLineSync()!);

  performOperation(choice, a, b);
  }
}

int calculate(int a, int b, Function opp)
  {
    int result = opp(a, b);
    return result;
  }

int requestOperation() {
  // Display operation choices
  print("Choose an operation:");
  print("1. Addition (+)");
  print("2. Subtraction (-)");
  print("3. Multiplication (*)");
  print("4. Division (/)");
  print("5. Exit");

  // Get user choice
  stdout.write("Enter your choice (1-5): ");
  return int.parse(stdin.readLineSync()!);
}


void performOperation(int choice, int a, int b) {
  // Perform the selected operation
  switch (choice) {
    case 1:
      print("Result: ${addNum(a, b)}");
      break;
    case 2:
      print("Result: ${subNum(a, b)}");
      break;
    case 3:
      print("Result: ${mulNum(a, b)}");
      break;
    case 4:
      // Handle division by zero
      if (b != 0) {
        print("Result: ${divNum(a, b)}");
      } else {
        print("Error: Division by zero is not allowed.");
      }
      break;
    case 5:
        exit(0);
    default:
      print("Invalid choice. Please select a number between 1 and 4.");
  }
}

// final addNum = (int a, int b)=> a + b;
// final subNum = (int a, int b)=> a - b;
// final mulNum = (int a, int b)=> a * b;
// final divNum = (int a, int b)=> a / b;

// void main() {
//   print("Simple Calculator");
//   print("Addition: ${addNum(5, 5)}");
//   print("Substraction: ${subNum(5, 5)}");
//   print("Multiplication: ${mulNum(5, 5)}");
//   print("Division: ${divNum(5, 5)}");
// }

// import 'dart:io';
// // int Show(int a , int b,int Function(int, int) op){


// //   stdout.write("Enter first number: ");
// //   int a = int.parse(stdin.readLineSync()!);

// //   // Get user input for the second number
// //   stdout.write("Enter second number: ");
// //   int b = int.parse(stdin.readLineSync()!);

// //   int result= op(a, b);
// //   return result;
// // }
// void main() {
//   int result = calulate();
//   print("Result: $result");
// }

// int show() {
//   stdout.write("Enter first number: ");
//   int a = int.parse(stdin.readLineSync()!);

//   // Get user input for the second number
//   stdout.write("Enter second number: ");
//   int b = int.parse(stdin.readLineSync()!);

//   stdout.write("Choose an operation (add, subtract, multiply, divide): ");
//   String operation = stdin.readLineSync()!.toLowerCase();


// }
// int calculate(int a , int b,int Function(int, int) op){
//   // Define a map of operations
//   var operations = {
//     'add': (int x, int y) => x + y,
//     'subtract': (int x, int y) => x - y,
//     'multiply': (int x, int y) => x * y,
//     'divide': (int x, int y) => x ~/ y, // Integer division
//   };
//   // Execute the appropriate function based on the operation
//   if (operations.containsKey(op)) {
//     return operations[operation]!(a, b);
//   } else {
//     print("Invalid operation");
//     return 0; // Return a default value or handle error as needed
//   }
// }
