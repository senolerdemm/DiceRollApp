import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(Colors: [Colors.blue, Colors.green]),

        backgroundColor: Colors.lightBlue,
      ),
    ),
  );
}
