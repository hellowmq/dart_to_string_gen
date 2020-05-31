library animal;

import 'package:to_string/to_string.dart';
export 'Cat.dart';
export 'Mouse.dart';


part 'Animal.g.dart';

@ToString()
class Animal{
  int foot;
  int eye;
  bool hasTail;


  Animal(this.foot, this.eye, this.hasTail);

  @override
  String toString() => this._ToString();
}
