class ToString {

  ///
  /// This define the toString method name.
  ///
  final String methodName;

  final String todoUrl;

  ///
  /// This define the toString method name.
  ///
  final bool privateInvisible;

  ///
  /// List [show] will show the field in List.
  ///
  /// private field in [show] will be shown when [privateInvisible] is true
  ///
  final List<String> show;

  ///
  /// List [hide] will ignore the fields included.
  ///
  /// field both in [show] & [hide] will be hidden.
  ///
  final List<String> hide;

  ///
  /// use extension method instead of value-pass method
  /// This feature will only work in Dart 2.7+
  ///
  final bool useExtensionMethod;

  const ToString({
    this.methodName = "_ToString",
    this.privateInvisible = true,
    this.todoUrl = "",
    this.show = const <String>[],
    this.hide = const <String>[],
    this.useExtensionMethod = false,
  });

  @override
  String toString() {
    return 'ToString{name: $methodName, todoUrl: $todoUrl}';
  }

  const ToString.DEFAULT({
    this.methodName = "_ToString",
    this.privateInvisible = true,
    this.todoUrl = "",
    this.show = const <String>[],
    this.hide = const <String>[],
    this.useExtensionMethod = false,
  });
}
