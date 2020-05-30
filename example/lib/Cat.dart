import 'package:example/Animal.dart';
import 'package:to_string/to_string.dart';

part 'Cat.g.dart';

@ToString('Tom')
class Cat extends Animal {
  void catchMouse() {}

  Cat() : super(4, 2, true) {}

  @override
  String toString() => _ToString();
}
