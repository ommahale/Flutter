import 'package:flutter/material.dart';
import 'package:id_app/Home.dart';
import 'package:id_app/Profile.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _options = const [LandingPage(), ProfilePage()];
  var _selected = 0;
  void tappedHandle(int index) {
    setState(() {
      _selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Artsmith 1512'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 1.0,
      ),
      backgroundColor: Colors.grey[700],
      body: _options.elementAt(_selected),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: 'About')
        ],
        currentIndex: _selected,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.amberAccent,
        onTap: tappedHandle,
      ),
    );
  }
}
