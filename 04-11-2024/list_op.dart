void main() {
  List<int> numbers = [-11, -7, 2, 3, 5, 7, 11, 13, 17, 23, 0, 4, 6, 8, 10];
  
  List<int> evenNumbers = getEvenNumbers(numbers);
  List<int> oddNumbers = getOddNumbers(numbers);
  List<int> positiveNumbers = getPositiveNumbers(numbers);
  List<int> negativeNumbers = getNegativeNumbers(numbers);
  List<int> primeNumbers = getPrimeNumbers(numbers);
  
  print("Original: $numbers");
  print("Even: $evenNumbers");
  print("Odd: $oddNumbers");
  print("Positive: $positiveNumbers");
  print("Negative: $negativeNumbers");
  print("Prime: $primeNumbers");
}

List<int> getEvenNumbers(List<int> numbers) {
  List<int> evenNumbers = [];
  for (int n in numbers) {
    if (n % 2 == 0) evenNumbers.add(n);
  }
  return evenNumbers;
}

List<int> getOddNumbers(List<int> numbers) {
  List<int> oddNumbers = [];
  for (int n in numbers) {
    if (n % 2 != 0) oddNumbers.add(n);
  }
  return oddNumbers;
}

List<int> getPositiveNumbers(List<int> numbers) {
  List<int> positiveNumbers = [];
  for (int n in numbers) {
    if (n > 0) positiveNumbers.add(n);
  }
  return positiveNumbers;
}

List<int> getNegativeNumbers(List<int> numbers) {
  List<int> negativeNumbers = [];
  for (int n in numbers) {
    if (n < 0) negativeNumbers.add(n);
  }
  return negativeNumbers;
}

List<int> getPrimeNumbers(List<int> numbers) {
  List<int> primeNumbers = [];
  for (int n in numbers) {
    if (isPrime(n.abs())) primeNumbers.add(n);
  }
  return primeNumbers;
}

bool isPrime(int n) => n > 1 && List.generate(n - 2, (i) => i + 2).every((i) => n % i != 0);
