class ToString {
  final String methodName;

  final String todoUrl;

  const ToString({this.methodName = "_ToString", this.todoUrl});

  @override
  String toString() {
    return 'ToString{name: $methodName, todoUrl: $todoUrl}';
  }

  const ToString.DEFAULT({this.methodName = "_ToString", this.todoUrl = ""});
}



