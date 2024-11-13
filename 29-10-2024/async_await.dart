Stream asynchronization(int number) async*{
  int val=number;
  while(val>0){
    if(val%2==0){
      yield val;
    }
    val--;
  }
}
main() async {
  print("Asyncing Starting Now"); 

  await asynchronization(10).forEach(print);

  print("End of main");
  
}


