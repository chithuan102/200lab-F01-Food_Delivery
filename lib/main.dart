
import 'package:flutter/material.dart';
import 'package:my_app/excercise.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery Exercise',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food Delivery Exercise'),
          centerTitle: true,
        ),
        body: Exercise2(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
