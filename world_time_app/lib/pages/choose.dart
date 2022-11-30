import 'package:flutter/material.dart';

class Loaction extends StatefulWidget {
  const Loaction({super.key});

  @override
  State<Loaction> createState() => _LoactionState();
}

class _LoactionState extends State<Loaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Location'),
        centerTitle: true,
      ),
    );
  }
}
