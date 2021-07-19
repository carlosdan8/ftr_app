import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> tareas = [
    'Tarea 1',
    'dev',
    'netflais',
    'dev',
    'netflais',
    'dev',
    'netflais',
    'dev',
    'netflais',
    'dev',
    'netflais',
    'dev',
    'netflais',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'miApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hola'),
        ),
        body: Column(
          children: tareas.map((elem) => Tarea(elem)).toList(),
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
    return Card(child: Center(child: Text(tarea)));
    throw UnimplementedError();
  }
}
