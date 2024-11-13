import 'model/toDoModel.dart';
import 'dart:convert';
void main() {
  // Creating a TodoModel instance
  var todo = TodoModel('Sample Todo', userId: 1, id: 1, title: 'Buy milk', completed: false);

  // Displaying the TodoModel instance
  print('TodoModel:');
  print('UserId: ${todo.userId}');
  print('Id: ${todo.id}');
  print('Title: ${todo.title}');
  print('Completed: ${todo.completed}');

  // Convert TodoModel to JSON
  String jsonStr = jsonEncode(todo.toJson());
  print('TodoModel to JSON: $jsonStr');

  // Convert JSON back to TodoModel
  var todoFromJson = TodoModel.fromJson(jsonDecode(jsonStr));
  print('TodoModel from JSON:');
  print('UserId: ${todoFromJson.userId}');
  print('Id: ${todoFromJson.id}');
  print('Title: ${todoFromJson.title}');
  print('Completed: ${todoFromJson.completed}');
}