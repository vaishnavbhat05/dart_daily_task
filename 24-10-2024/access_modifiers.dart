// import 'person.dart';

//Public

//  class Person {
//   String? name;
//   int? age;

//   void greet() {
//     print('Hello, my name is $name and I am $age years old.');
//   }
//  }

//  void main() {
//   var person = Person();
//   person.name = 'Nachiketa';
//   person.age = 30;
//   person.greet(); // Hello, my name is Nachiketa and I am 30 years old.
//  }

//Private 

//  class Person {
//   String? _name;
//   int? _age;

//   void _greet() {
//     print('Hello, my name is $_name and I am $_age years old.');
//   }

//   void introduce() {
//     _name = 'Nachiketa';
//     _age = 30;
//     _greet(); // Hello, my name is Nachiketa and I am 30 years old.
//   }
//  }

//  void main() {
//   var person = Person();
//   person.introduce();
//  }

class Student {
  // Private Properties
  String? _firstName;
  String? _lastName;
  int? _age;

  // Getter to get full name
  String get fullName => this._firstName! + " " + this._lastName!;

  // Getter to read private property _age
  int get age => this._age!;

  // Setter to update private property _firstName
  set firstName(String firstName) => this._firstName = firstName;

  // Setter to update private property _lastName
  set lastName(String lastName) => this._lastName = lastName;

  // Setter to update private property _age
  set age(int age) {
    if (age < 0) {
      throw new Exception("Age can't be less than 0");
    }
    this._age = age;
  }
}


