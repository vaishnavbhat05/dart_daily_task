import 'dart:convert';

main(List<String> args)
{
  String value='''[{"EmployeeId":"23","EmployeeName":"Vaishnav"}]''';
  List<Map<String,dynamic>> decodedValue=List<Map<String,dynamic>>.from(jsonDecode(value) as List);
  print(decodedValue);
}