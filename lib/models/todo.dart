class Todo {
  Todo({required this.description, required this.id, this.ticked = false});

  final String description;
  final String id;
  final bool ticked;

  void printTodoObj() {
    print('desc: $description\n id: $id\n ticked: $ticked');
  }
}
