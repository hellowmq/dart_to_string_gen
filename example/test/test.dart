import 'package:example/Animal.dart';
import 'package:example/Cat.dart';
import 'package:example/Mouse.dart';

void main() {
  Animal animal = Animal(4, 2, true);
  Mouse mouse = Mouse();
  Cat cat = Cat();
  print(animal);
  print(mouse);
  print(cat);
}
