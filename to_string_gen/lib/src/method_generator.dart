import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'package:to_string/to_string.dart';

String generateToStringPartFile(final Element element,
    final ConstantReader annotation,
    final BuildStep buildStep,
    final ToString config) {
  return '''
    ${generateRef(element, annotation)}
    
    ${generateToStringDoc(element, annotation)}
    
    ${generateToStringMethod(element, annotation, config)}
    
    ${generateToStringExtensionMethod(element, annotation, config)}
      ''';
}

String generateRef(Element element, ConstantReader annotation) {
  return "    part of '${element.name}.dart';";
}

String generateToStringDoc(Element element, ConstantReader annotation) {
  return '// Annotation ${ToString} for ${element.kind} ${element.name}';
}

String generateToStringMethod(Element element, ConstantReader annotation,
    ToString config) {
  if (config.useExtensionMethod) return "";
  String className = element.name;
  List<FieldElement> fields = ((element as ClassElement).fields);
  List<FieldElement> subFields = _getFilteredField(fields, annotation, config);

  return """
  String ${config.methodName}(${className} clazz) => 
   '${className}:{${_toStringNorm(subFields, "clazz")}}';
  """;
}

///
/// Todo: extension was introduced in Dart 2.7.
///

String generateToStringExtensionMethod(Element element,
    ConstantReader annotation, ToString config) {
  if (!config.useExtensionMethod) return "";
  String className = element.name;
  var fields = ((element as ClassElement).fields);
  var subFields = _getFilteredField(fields, annotation, config);
  return """
  extension on ${className} {
   String ${config.methodName}() => 
   '${className}:{${_toStringFieldNorm(subFields)}}';
   }
   """;
}

List<FieldElement> _getFilteredField(List<FieldElement> fields,
    ConstantReader annotation,
    ToString config) {
  return fields.where((element) {
    if (!config.privateInvisible && element.name.startsWith('_'))
      return false;
    return true;
  }).toList();
}

String _toStringNorm(Iterable field, String clazz) {
  return field.map((classElement) =>
  "${classElement.name}=\$\{clazz.${classElement.name}\}")
      .join(", ");
}

String _toStringFieldNorm(Iterable field) {
  return field
      .map((classElement) => "${classElement.name}=\$${classElement.name}")
      .join(", ");
}
