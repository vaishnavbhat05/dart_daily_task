void main() {
  List<int> numbers = [-11, -7, 2, 3, 5, 7, 11, 13, 17, 23, 0, 4, 6, 8, 10];

  // Define lambda functions for filtering
  final isEven = (int n) => n % 2 == 0;
  final isOdd = (int n) => n % 2 != 0;
  final isPositive = (int n) => n > 0;
  final isNegative = (int n) => n < 0;
  final isPrime = (int n) => n > 1 && List.generate(n - 2, (i) => i + 2).every((i) => n % i != 0);

  // Use the custom filter logic with lambdas
  List<int> evenNumbers = fun(numbers, isEven);
  List<int> oddNumbers = fun(numbers, isOdd);
  List<int> positiveNumbers = fun(numbers, isPositive);
  List<int> negativeNumbers = fun(numbers, isNegative);
  List<int> primeNumbers = fun(numbers, isPrime);

  print("Original: $numbers");
  print("Even: $evenNumbers");
  print("Odd: $oddNumbers");
  print("Positive: $positiveNumbers");
  print("Negative: $negativeNumbers");
  print("Prime: $primeNumbers");
}

List<int> fun(List<int> numbers, bool Function(int) op) {
  List<int> filteredNumbers = [];
  for (int n in numbers) {
    if (op(n)) {
      filteredNumbers.add(n);
    }
  }
  return filteredNumbers;
}
