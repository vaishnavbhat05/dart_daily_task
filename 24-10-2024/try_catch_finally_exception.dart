class Age implements Exception {
  String? message;
  Age({this.message});
  String error() => 'Geek, your age is less than 18 .';
}

void main() {
  int geek_age1 = 20;
  int geek_age2 = 10;
  
  try{
    // Checking Age and
    // calling if the
    // exception occur
    check(geek_age1);
    check(geek_age2);
  }
  catch(e){
    // Ensure we're catching the correct type
    if (e is Age) {
      // Printing error from the custom exception
      print(e.message);
    } else {
      print('An unexpected error occurred: $e');
    }
  }
  finally {
    print("This will always be executed");
  }
}

// Checking Age
void check(int age){
  if(age < 18){
    throw new Age(message: "you are not eligible");
  }
  else
  {
    print("You are eligible for Voting .");
  }
}

//TODO:Create Exception Folder
