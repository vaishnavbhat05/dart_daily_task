// Writing extension small example

extension ExtendedString on String {
  bool get isValidName {   
    return !this.contains(new RegExp(r'[0–9]'));
  }
}

// Writing extended methods
extension ExtendedString1 on String {
String prefixWith(String prefix) {
  return '$prefix $this';
 }
}

//Writing extension for operator
extension ExtendedString2 on String {
 String operator &(String prefix) => '$prefix $this';
}

main() {
  print('Pizza'.isValidName);

   print('Pizza'.prefixWith('I love'));

   print('Pizaa'&'I Love');

}

//API conflicts
// -------------------------------------------------------
// File: extended_strings.dart
// extension ExtendedString on String {
//   bool get isValidName {
//     return !this.contains(new RegExp(r'[0–9]'));
//   }
// }
// --------------------------------------------------------
// File: my_extended_strings.dart
// extension MyExtendedString on String {
//   bool get isValidName {
//     return !this.contains(new RegExp(r'[0–9]'));
//   }
// }
// -------------------------------------------------------
// main() {
//   print('Pizza'.isValidName);
// }


// How do we resolve API conflicts
// Option 1: Hide it

// import 'extended_strings.dart'; //Has isValidName
// import 'my_extended_strings.dart' //Has isValidName but now hide it.
// Option 2: Write extension explicitly

// import 'extended_strings.dart'; //Has isValidName
// import 'my_extended_strings.dart' //Has isValidName 
// main() {
//   print(ExtendedString('Pizza').isValidName);
//   print(MyExtendedString('Pizza').isValidName);
// }