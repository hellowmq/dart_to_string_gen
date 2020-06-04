class ToString {
  final String methodName;

  final String todoUrl;

  final bool privateInvisible;

  final List<String> show;

  final List<String> hide;

  const ToString({
    this.methodName = "_ToString",
    this.privateInvisible = true,
    this.todoUrl = "",
    this.show,
    this.hide,
  });

  @override
  String toString() {
    return 'ToString{name: $methodName, todoUrl: $todoUrl}';
  }

  const ToString.DEFAULT({
    this.methodName = "_ToString",
    this.privateInvisible = true,
    this.todoUrl = "",
    this.show,
    this.hide,
  });
}
