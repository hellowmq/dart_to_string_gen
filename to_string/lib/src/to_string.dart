class ToString {
  final String name;

  final String todoUrl;

  const ToString(this.name, {this.todoUrl}) : assert(name != null);

  @override
  String toString() {
    return 'ToString{name: $name, todoUrl: $todoUrl}';
  }
}



