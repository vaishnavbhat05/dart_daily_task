import 'dart:async';

void main() {
      print('Dart app starts');
      scheduleMicrotask(() => print('Microtask 1'));
      Future(() => print('This is a new Future'));
      scheduleMicrotask(() => print('Microtask 2'));
      
      print('Dart app ends');
    }

    