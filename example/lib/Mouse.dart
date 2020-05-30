
import 'package:to_string/to_string.dart';
import 'Animal.dart';

part 'Mouse.g.dart';


@ToString('Jerry',todoUrl: 'www.wenmq.cn')
class Mouse extends Animal{

  void steal(){}


  Mouse() : super(4, 2, true) {}
  @override
  String toString() => _ToString();
}