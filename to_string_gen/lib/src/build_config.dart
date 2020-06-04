import 'package:to_string/to_string.dart';

import 'package:source_gen/source_gen.dart';

ToString buildToStringFromAnnotation(final ConstantReader annotation) {
  var methodName = annotation.read("methodName").stringValue ?? "_ToString";
  var privateInvisible = annotation.read("methodName").boolValue ?? true;
  var todoUrl = annotation.read("todoUrl").stringValue ?? "";
  var show = annotation.read("show").listValue as List<String> ?? null;
  var hide = annotation.read("hide").listValue as List<String> ?? null;
  return ToString(
    methodName: methodName,
    privateInvisible: privateInvisible,
    todoUrl: todoUrl,
    show: show,
    hide: hide,
  );
}
