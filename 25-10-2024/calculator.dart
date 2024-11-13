
import 'dart:io';

final add = (int a, int b) => a + b;
final sub = (int a, int b) => a - b;
final mul = (int a, int b) => a * b;
final div = (int a, int b) => a / b;
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

int calculate(int a, int b, op)
  {
    int result = op(a, b);
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
      print("Result: ${calculate(a, b, add)}");
      break;
    case 2:
      print("Result: ${calculate(a, b, sub)}");
      break;
    case 3:
      print("Result: ${calculate(a, b, mul)}");
      break;
    case 4:
      // Handle division by zero
      if (b != 0) {
        print("Result: ${calculate(a, b, div)}");
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
