void main() {
  List<int> numbers = [-11, -7, 2, 3, 5, 7, 11, 13, 17, 23, 0, 4, 6, 8, 10];

  print("Original: $numbers");
  print("Even: ${numbers.where((n) => n % 2 == 0)}");
  print("Odd: ${numbers.where((n) => n % 2 != 0)}");
  print("Positive: ${numbers.where((n) => n > 0)}");
  print("Negative: ${numbers.where((n) => n < 0)}");

  print("Prime: ${numbers.where((n) 
   {
    return isPrime(n.abs());
    }
   )}");//







   
}

bool isPrime(int n) => n > 1 && List.generate(n - 2, (i) => i + 2).every((i) => n % i != 0);
