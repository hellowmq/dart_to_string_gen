import 'package:example/Animal.dart';
import 'package:to_string/to_string.dart';

part 'Cat.g.dart';

@ToString(methodName: '_catNamedTom')
class Cat extends Animal {
  void catchMouse() {}

  Cat() : super(4, 2, true) {}

  String _food;

  String claw;

  @override
  String toString() => _catNamedTom(this);
}
