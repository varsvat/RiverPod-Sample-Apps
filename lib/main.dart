import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final riverpodStringProvider =
    Provider((_) => 'Ooooh Yeah ... learning Riverpod ...... :)');

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

final counterProvider = StateProvider<int>((ref) => 0);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RiverPod Example by @VarSVat'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(builder: (context, watch, child) {
              final providerstring = watch(riverpodStringProvider);
              return Text(providerstring.toString());
            }),
            Consumer(builder: (context, watch, _) {
              final count = watch(counterProvider).state;
              return Text('$count');
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => increment(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}

void increment(BuildContext context) {
  final ctrProvider = context.read(counterProvider);
  ctrProvider.state++;
}
