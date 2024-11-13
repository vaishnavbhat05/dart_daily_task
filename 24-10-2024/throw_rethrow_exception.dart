// main() { 
//    try { 
//       test_age(-2); 
//    } 
//    catch(e) { 
//       print('Age cannot be negative'); 
//    } 
// }  
// void test_age(int age) { 
//    if(age<0) { 
//       throw new FormatException(); 
//    } 
// }

// throw custom Exception
// class AmtException implements Exception { 
//    String errMsg() => 'Amount should be greater than zero'; 
// }  
// void main() { 
//    try { 
//       withdraw_amt(-1); 
//    } 
//    catch(e) 
//    {
//     if(e is AmtException) 
//       print(e.errMsg()); 
//     else
//       print("Something error Occured");
//    }  
//    finally { 
//       print('Ending requested operation.....'); 
//    } 
// }  
// void withdraw_amt(int amt) { 
//    if (amt <= 0) { 
//       throw new AmtException(); 
//    } 
// }  

void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}
void main() {
  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }
}