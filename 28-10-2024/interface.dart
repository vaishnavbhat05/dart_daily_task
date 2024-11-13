
class Robo { 
   void printdata() {  
      print("Hello Guys !!");  
   }  
}   
  
class Gfg implements Robo {  
   @override //It's Optional
   void printdata() {   //But we have to override all functions if we give implements keyword.
      print("Welcome to Robosoft");  
   }  
}
void main(){ 
    
   Gfg geek1= new Gfg();   
   geek1.printdata();  
} 