// class Book {
//   String title;
//   String author;

//   Book(this.title, this.author);
// }

// // Extension to add getter and setter for rating
// extension BookExtension on Book {
//   double? _rating=0.0; // Use a private field within the extension (not allowed, so we will handle rating differently)

//   // Getter for rating
//   double get rating => _rating ?? 0.0; // Default to 0.0 if not set

//   // Setter for rating
//   set rating(double value) {
//     if (value < 0 || value > 5) {
//       throw Exception("Rating must be between 0 and 5");
//     }
//     _rating = value; // Ideally, this should be a part of the class
//   }
// }



// void main() {
//   // Create an instance of Book
//   Book book = Book("Dart Programming", "John Doe");

//   // Set rating using the extension
//   book.rating = 4.5;

//   // Get rating using the extension
//   print("The rating for '${book.title}' by ${book.author} is ${book.rating}");
// }


// Define Person class
class Person {
  String? firstName;
  String? lastName;
 
  Person({this.firstName, this.lastName});
}
 
// Define extension for Person
extension PersonExtensions on Person {
  // Getter for full name
  String get fullName {
    return '${firstName ?? ''} ${lastName ?? ''}';
  }
 
  // Setter for full name
  set fullName(String value) {
    final names = value.split(' ');
    firstName = names.first.toLowerCase();
    lastName = names.last.toLowerCase();
  }
 
  // Getter for initials
  String get initials {
    return '${firstName?[0].toUpperCase()}${lastName?[0].toUpperCase()}';
  }
}
 //TODO:create Exception folder and move AgeException in that folder
void main() {
  // Create Person object
  Person person = Person(firstName: 'Shiva', lastName: 'Raj');
 
  // Use getter for full name
  print(person.fullName);
 
  // Use setter for full name
  // person.fullName = 'Raj Shiva';
  print(person.firstName);
  print(person.lastName);
 
  // Use getter for initials
  print(person.initials);
}


