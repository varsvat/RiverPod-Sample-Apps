import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final riverpodStringProvider =
    Provider((_) => 'Ooooh ... learning Riverpod ...... :)');

void main() {
  runApp(ProviderScope(child: MyApp()));
}

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
