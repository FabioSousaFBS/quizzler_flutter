import 'package:flutter/material.dart';
import 'package:quizzler_flutter/quizzler.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Quizzler'),
          backgroundColor: Colors.black,
        ),
        body: Quizzler(),
      ),
    ),
  );
}