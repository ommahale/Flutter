import 'package:fit_quest/screens/wrapper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Wrapper(),
    theme: ThemeData(
        primaryColor: Colors.blueGrey, backgroundColor: Colors.blueGrey[900]),
  ));
}
