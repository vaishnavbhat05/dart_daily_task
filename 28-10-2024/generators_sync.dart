Iterable synchronization(int number) sync*{
  int val=number;
  while(val>0){
    if(val%2==0){
      yield val;
    }
    val--;
  }
}

Stream asynchronization(int number) async*{
  int val=number;
  while(val>0){
    if(val%2==0){
      yield val;
    }
    val--;
  }
}
main() {
  print("Syncing Starting Now");
  
  synchronization(10).forEach(print);

  print("End of main");

  print("Asyncing Starting Now"); 

  asynchronization(10).forEach(print);

  print("End of main");
  
}


