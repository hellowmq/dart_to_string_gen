import 'package:to_string/to_string.dart';

import 'package:source_gen/source_gen.dart';

ToString buildToStringFromAnnotation(final ConstantReader annotation) {
  var methodName = annotation.read("methodName").isNull
      ? "_ToString"
      : annotation.read("methodName").stringValue;
  var privateInvisible = annotation.read("privateInvisible").isNull
      ? true
      : annotation.read("privateInvisible").boolValue;
  var todoUrl = annotation.read("todoUrl").isNull
      ? ""
      : annotation.read("todoUrl").stringValue;

  try{
    annotation
        .read("show")
        .listValue
        .map<String>((e) => e.toString())
        .toList()
        .cast<String>();
  } catch (e){
    print(e);
  }
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
  var useExtensionMethod = annotation.read("useExtensionMethod").isNull
      ? false
      : annotation.read("useExtensionMethod").boolValue;
  print("ok");

  return ToString(
      methodName: methodName,
      privateInvisible: privateInvisible,
      todoUrl: todoUrl,
      show: show,
      hide: hide,
      useExtensionMethod: useExtensionMethod);
}
