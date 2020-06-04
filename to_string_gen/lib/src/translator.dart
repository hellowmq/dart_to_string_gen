import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:source_gen/source_gen.dart';

import 'package:to_string/to_string.dart';
import 'package:to_string_gen/src/method_generator.dart';

class ToStringGenTor extends GeneratorForAnnotation<ToString> {
  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    if (!checkAnnotationType(typeChecker, element)) return null;
    return generateToStringPartFile(element, annotation, buildStep);
  }

  bool checkAnnotationType(
      final TypeChecker typeChecker, final Element element) {
    if (!typeChecker.hasAnnotationOf(element)) {
      print(
          "ToString should apply to a class but not a ${element.kind} ${element.name}");
      return false;
    }
    print('Annotation ToString found in $element;');
    return true;
  }
}
