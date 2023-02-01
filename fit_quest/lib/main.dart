import 'package:fit_quest/screens/signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Signin(),
    theme: ThemeData(
        primaryColor: Colors.blueGrey, backgroundColor: Colors.blueGrey[900]),
  ));
}
