Stream<int> getStream(int n) async* {
  if (n > 0) {  
    await Future.delayed(Duration(seconds: 1));
    yield n; 
    print("object");
    yield* getStream(n - 1); 
  }
}

void main() {
  getStream(3).forEach(print);
  print("Already executed");
}