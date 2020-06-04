import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'package:to_string/to_string.dart';

import 'build_config.dart';

String generateToStringPartFile(final Element element,
    final ConstantReader annotation, final BuildStep buildStep) {
  return '''
    ${generateRef(element, annotation)}
    
    ${generateToStringDoc(element, annotation)}
    
    ${generateToStringMethod(element, annotation)}
      ''';
}

String generateRef(Element element, ConstantReader annotation) {
  return "    part of '${element.name}.dart';";
}

String generateToStringDoc(Element element, ConstantReader annotation) {
  return '// Annotation ${ToString} for ${element.kind} ${element.name}';
}

String generateToStringMethod(Element element, ConstantReader annotation) {
  String className = element.name;
  ToString config = buildToStringFromAnnotation(annotation);
  var fields = ((element as ClassElement).fields);
  var subFields = _getFilteredField(fields, annotation);
  return """
  /// Todo: extension was introduced in Dart 2.7. 
  extension on ${className} {
   String ${config.methodName}() => 
   '${className}:{${_toStringNorm(subFields)}}';
   }
   """;
}

List<FieldElement> _getFilteredField(
    List<FieldElement> fields, ConstantReader annotation) {
  return fields.where((element) => true).toList();
}

String _toStringNorm(Iterable field) {
  return field
      .map((classElement) => "${classElement.name}=\$${classElement.name}")
      .join(", ");
}
