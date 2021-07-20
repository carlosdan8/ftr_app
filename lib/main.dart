import 'package:flutter/material.dart';

void main() {
  runApp(MyApp('Otra tarea'));
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  String nuevaTarea = 'Nueva tarea ';
  //+ (widget.tareas.length + 1).toString()

  MyApp(this.nuevaTarea);

  @override
  State<MyApp> createState() {
    return StateMiApp();
  }
}

class StateMiApp extends State<MyApp> {
  late List<String> tareas;

  @override
  void initState() {
    super.initState();
    print('Initial State');
    tareas = [
      'Tarea 1',
      'dev',
      'netflais',
      'dev',
      'netflais',
      'dev',
    ];
  }

  @override
  Widget build(BuildContext context) {
    print('bMyApp2');
    return MaterialApp(
      title: 'miApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hola'),
        ),
        body: Container(
          height: 50.0,
          child: ListView.builder(
              //itemCount: tareas.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, position) {
                return Tarea((position + 1).toString());
              }
              //children: tareas.map((elem) => Tarea(elem)).toList(),
              ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                tareas.add(widget.nuevaTarea);
              });
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
    return GestureDetector(
      child: Card(child: Center(child: Text(tarea))),
      onTap: () {
        print('Click en la tarea $tarea');
      },
      onDoubleTap: () {
        print('Doble click en la tarea $tarea');
      },
      onLongPress: () {
        print('Click largo en la tarea $tarea');
      },
    );
  }
}

// ignore: must_be_immutable
// class MyApp extends StatelessWidget {
//   List<String> tareas = [
//     'Tarea 1',
//     'dev',
//     'netflais',
//     'dev',
//     'netflais',
//     'dev',
//     'netflais',
//     'dev',
//     'netflais',
//     'dev',
//     'netflais',
//     'dev',
//     'netflais',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'miApp',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Hola'),
//         ),
//         body: Column(
//           children: tareas.map((elem) => Tarea(elem)).toList(),
//         ),
//         floatingActionButton: FloatingActionButton(
//             child: Icon(Icons.add),
//             onPressed: () {
//               print('Cliked');
//             }),
//       ),
//     );
//   }
// }


