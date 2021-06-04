class Todo {
  Todo({required this.description, required this.id, this.completed = false});

  final String description;
  final String id;
  final bool completed;

   @override
  String toString() {
    return 'Todo(description: $description, completed: $completed)';
  }
}
