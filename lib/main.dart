
import 'package:flutter/material.dart';
import 'package:my_app/exercise.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery Exercise',
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food Delivery Exercise'),
          centerTitle: true,
        ),
        body: Exercise1(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
