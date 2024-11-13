// Library circles.dart
import 'model/shape.dart';

// Can be extended
base class Circle extends Shape {
  double radius = 5.0;

  // ...
}

// // ERROR: Cannot be implemented
// base class MockShape implements Shape {
//   @override
//   void draw() {
//     // ...
//   }
// }

void main(){
  // Can be constructed
Shape myShape = Shape();
print("Value Stored in Base Shape class is: ${myShape.val}");

Circle c=Circle();
print(c.radius);
c.draw();
}