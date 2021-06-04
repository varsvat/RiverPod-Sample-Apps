import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodapps/providers/todoprovider.dart';
import 'package:uuid/uuid.dart';

import 'models/todo.dart';

final riverpodStringProvider =
    Provider((_) => 'Ooooh ... learning Riverpod ...... :)');

void main() {
  runApp(ProviderScope(child: MyApp()));
}

/// Some keys used for testing
final addTodoKey = UniqueKey();
final activeFilterKey = UniqueKey();
final completedFilterKey = UniqueKey();
final allFilterKey = UniqueKey();

final todoListProvider = StateNotifierProvider<TodoList, List<Todo>>((ref) {
  return TodoList([
    Todo(id: 'todo-0', description: 'varun'),
    Todo(id: 'todo-1', description: 'Ironman'),
    Todo(id: 'todo-2', description: 'something'),
  ]);
});


const uuid = Uuid();

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final String value = watch(riverpodStringProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('RiverPod Example by @VarSVat'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(value),
        ),
      ),
    );
  }
}
