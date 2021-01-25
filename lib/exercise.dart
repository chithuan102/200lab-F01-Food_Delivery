import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Exercise1 extends StatefulWidget {
  @override
  _Exercise1State createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _celsiusEditController;
  TextEditingController _fhrenheitEditController;

  @override
  void initState() {
    _celsiusEditController = TextEditingController();
    _fhrenheitEditController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _celsiusEditController.dispose();
    _fhrenheitEditController.dispose();
    super.dispose();
  }

  void onChangeC2F(String value) {
    _fhrenheitEditController.text = double.tryParse(value) != null
        ? ((double.tryParse(value) * 1.8) + 32).toStringAsFixed(2)
        : '0';
  }

  void onChangeF2C(String value) {
    _celsiusEditController.text = double.tryParse(value) != null
        ? ((double.parse(value) - 32) / 1.8).toStringAsFixed(2)
        : '0';
  }

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
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: TextFormField(
              controller: _celsiusEditController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'C Temperature',
                border: OutlineInputBorder(),
              ),
              onChanged: onChangeC2F,
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: TextFormField(
              controller: _fhrenheitEditController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'F Temperature',
                border: OutlineInputBorder(),
              ),
              onChanged: onChangeF2C,
            ),
          ),
        ],
      ),
    );
  }
}

class Exercise2 extends StatefulWidget {
  @override
  _Exercise2State createState() => _Exercise2State();
}

class _Exercise2State extends State<Exercise2> {
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
            child: Container(
              color: Colors.pinkAccent,
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        color: Colors.pinkAccent,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.pinkAccent,
            ),
          )
        ],
      ),
      Positioned(
          left: 60.0,
          top: 380.0,
          child: Container(
            width: 180,
            height: 180,
            color: Color(0xFF0E3311).withOpacity(0.5),
          )),
    ]);
  }
}
