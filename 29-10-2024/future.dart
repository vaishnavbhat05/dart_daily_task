Future<void> loginUser() {
  // some functional code
  return Future.delayed(Duration(seconds: 2), () {
    print ('User logged in successfully!');
  });
}
void main(){
  loginUser();
  print("Please wait for 2 Seconds.");
}