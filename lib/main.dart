import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('$key');
    return MaterialApp(
      title: 'Food Delivery Exercise',
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

class Exercise1 extends StatefulWidget {
  @override
  _Exercise1State createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController celsiusTemp = new TextEditingController();
  TextEditingController fhrenheitTemp = new TextEditingController();
  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8),
            alignment: Alignment.center,
            child: Text(
              'Convert degrees C to F',
              style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: TextFormField(
              controller: celsiusTemp,
              decoration: InputDecoration(
                labelText: 'C Temperature',
                border: OutlineInputBorder(),
              ),
              onChanged: ((value) {
                try {
                  fhrenheitTemp.text =
                      ((double.parse(value) * 1.8) + 32).toStringAsFixed(2);
                  _validate = false;
                } catch (e) {
                  _validate = true;
                  fhrenheitTemp.text = '0';
                }
                if (value == '') {
                  _validate = true;
                }
              }),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: TextFormField(
              controller: fhrenheitTemp,
              decoration: InputDecoration(
                labelText: 'F Temperature',
                border: OutlineInputBorder(),
              ),
              onChanged: ((value) {
                try {
                  celsiusTemp.text =
                      ((double.parse(value) - 32) / 1.8).toStringAsFixed(2);
                  _validate = false;
                } catch (e) {
                  _validate = true;
                  celsiusTemp.text = '0';
                }
                if (value == '') {
                  _validate = true;
                }
              }),
            ),
          )
        ],
      ),
    );
  }
}

class Excericse2 extends StatefulWidget {
  @override
  _Excericse2State createState() => _Excericse2State();
}

class _Excericse2State extends State<Excericse2> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(
        children: [
          Container(
            width: 90,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 120,
                    color: Colors.lightBlue,
                    child: Row(
                      children: [
                        Container(
                          width: 30,
                          child: Column(
                            children: [
                              Container(
                                height: 30,
                                color: Colors.grey,
                              ),
                              Container(
                                height: 30,
                                color: Colors.orange,
                              ),
                              Container(
                                height: 30,
                                color: Colors.blue,
                              ),
                              Container(
                                height: 30,
                                color: Colors.pink,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          child: Column(
                            children: [
                              Container(
                                height: 90,
                                child: Container(
                                  color: Colors.lightBlueAccent,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          color: Colors.lightGreenAccent,
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          color: Colors.yellow,
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.yellow,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(color: Colors.pinkAccent),
          ),
          Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Container(color: Colors.pinkAccent),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(color: Colors.white),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 3,
            child: Container(color: Colors.pinkAccent),
          )
        ],
      ),
      new Positioned(
          left: 40.0,
          top: 380.0,
          child: new Container(
            width: 180,
            height: 180,
            color: Color(0xFF0E3311).withOpacity(0.5),
          )),
    ]);
  }
}
