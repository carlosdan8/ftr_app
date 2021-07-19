import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'miApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hola'),
        ),
        body: Column(
          children: <Tarea>[Tarea('Primera tarea'), Tarea('Segunda tarea')],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              print('Cliked');
            }),
      ),
    );
  }
}

// ignore: must_be_immutable
class Tarea extends StatelessWidget {
  String tarea = '';

  Tarea(this.tarea);

  @override
  Widget build(BuildContext context) {
    return Card(child: Text(tarea));
    throw UnimplementedError();
  }
}
