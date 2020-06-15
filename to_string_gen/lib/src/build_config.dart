import 'package:to_string/to_string.dart';

import 'package:source_gen/source_gen.dart';

ToString buildToStringFromAnnotation(final ConstantReader annotation) {
  String methodName = annotation.read("methodName").isNull
      ? "_ToString"
      : annotation.read("methodName").stringValue;
  bool privateInvisible = annotation.read("privateInvisible").isNull
      ? true
      : annotation.read("privateInvisible").boolValue;
  String todoUrl = annotation.read("todoUrl").isNull
      ? ""
      : annotation.read("todoUrl").stringValue;

  List<String> show = annotation.read("show").isNull
      ? []
      : (annotation
          .read("show")
          .listValue
          .map<String>((e) => e.toString())
          .toList()
          .cast<String>());
  List<String> hide = annotation.read("hide").isNull
      ? []
      : (annotation
          .read("hide")
          .listValue
          .map<String>((e) => e.toString())
          .toList()
          .cast<String>());
  bool useExtensionMethod = annotation.read("useExtensionMethod").isNull
      ? false
      : annotation.read("useExtensionMethod").boolValue;
  return ToString(
      methodName: methodName,
      privateInvisible: privateInvisible,
      todoUrl: todoUrl,
      show: show,
      hide: hide,
      useExtensionMethod: useExtensionMethod);
}
