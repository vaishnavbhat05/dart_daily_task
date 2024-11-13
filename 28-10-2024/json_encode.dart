import 'dart:convert';
 
void main(List<String> args)
{
  Map<String, String> resBody={};
  resBody["Name"]= "Vaishnav";
  resBody['Hobby']= 'Cricket';
  Map<String, Map<String, String>> user={};
  user['Resbody Details']= resBody;
  String str= json.encode(user);
  print(str);
}

