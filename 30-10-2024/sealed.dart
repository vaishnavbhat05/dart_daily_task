sealed class Color {

String id;

Color(this.id) {
print('Creating a color');
}
}

class Green extends Color {
Green(super.id);
}

class Blue extends Color {
Blue(super.id);
}

class Red extends Color {
final String name;

Red(String id, this.name) : super(id) {
print('Creating a red');
}
}
void main(){
  Red r=Red("24","Vaishnav");
  print(r.id);
  print(r.name);
}
