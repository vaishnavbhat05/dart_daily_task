import 'dart:io';

String convertDaysToDate(int totalDays) 
{
  int years = totalDays ~/ 365; 
  int leapYears = (years ~/ 4); 
  int remainingDays = totalDays - years * 365 - leapYears; 
  
  int months = remainingDays ~/ 30; 
  remainingDays = remainingDays % 30; 

  return "$totalDays Days = $years year${years > 1 ? 's' : ''}, $months month${months > 1 ? 's' : ''}, $remainingDays day${remainingDays > 1 ? 's' : ''}";
}

void main() 
{
  print("Enter the total number of days:");
  int totalDays = int.parse(stdin.readLineSync()!);
  print(convertDaysToDate(totalDays));
}
