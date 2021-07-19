import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'miApp',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Hola'),
      ),
      body: Center(
        child: Text('Hola Mundo'),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('Cliked');
          }),
    ),
  ));
}
