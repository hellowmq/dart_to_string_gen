import 'package:example/Animal.dart';

import 'Cat.dart';
import 'Mouse.dart';

void main() {
  Animal animal = Animal(4, 2, true);
  Mouse mouse = Mouse();
  Cat cat = Cat();
  print(animal);
  print(mouse);
  print(cat);
}
