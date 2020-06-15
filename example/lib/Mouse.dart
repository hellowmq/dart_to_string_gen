
import 'package:to_string/to_string.dart';
import 'Animal.dart';

part 'Mouse.g.dart';


@ToString(methodName: '_mouseNamedJerry',todoUrl: 'www.wenmq.cn')
class Mouse extends Animal{

  void steal(){}

  String _food;


  Mouse() : super(4, 2, true) {}
  @override
  String toString() => _mouseNamedJerry(this);
}