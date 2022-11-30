import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(Icons.edit_location),
                label: Text(
                  'Edit Location',
                  style: TextStyle(fontSize: 20),
                )),
            TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(Icons.access_time),
                label: Text(
                  'Time',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      )),
    );
  }
}
