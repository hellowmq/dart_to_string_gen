import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:source_gen/source_gen.dart';

import 'package:to_string/to_string.dart';

class ToStringGenTor extends GeneratorForAnnotation<ToString> {
  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    // TODO: implement generateForAnnotatedElement
    /**
     *
     */
    print('element: $element');
    print('annotation $annotation');
    print('buildStep $buildStep');
//    if (element.kind == ElementKind.CLASS) {
//      for (var e in ((element as ClassElement).fields)) {
//        print("fields ${e.name} \n");
//      }
//      for (var e in ((element as ClassElement).methods)) {
//        print("methods $e \n");
//      }
//    }
    return '''
    part of '${element.name}.dart';
    
    // Hey! Annotation found! $element";
  /**
  *  element= ${element.runtimeType} $element
  *  annotation= ${annotation.runtimeType} $annotation
  *  buildStep= ${buildStep.runtimeType} $buildStep
  */
  
  
  ${getToStringExtension(element)}
  
  ''';
  }

  String getToStringExtension(Element element) {
    if (element.kind != ElementKind.CLASS) return null;
    var elementName = element.name;
    var fields = ((element as ClassElement).fields);
    return "extension on ${elementName} { String _ToString() => '${elementName}{${_toStringNorm(fields)}}';}";
  }

  String _toStringNorm( List<FieldElement> field) =>  field.map((classElement)=>"${classElement.name}=\$${classElement.name}").join(", ");

}
