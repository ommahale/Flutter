import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map info = {};
  @override
  Widget build(BuildContext context) {
    info = ModalRoute.of(context)!.settings.arguments as Map;
    String bgImg = info['isDay'] ? 'day.png' : 'night.png';
    Color? bgCol =
        info['isDay'] ? Colors.blueAccent[300] : Colors.indigoAccent[700];
    return Scaffold(
      backgroundColor: bgCol,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/' + bgImg), fit: BoxFit.cover)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Column(
              children: [
                TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: const Icon(Icons.edit_location,
                        color: Colors.cyanAccent),
                    label: const Text(
                      'Edit Location',
                      style: TextStyle(fontSize: 20, color: Colors.cyanAccent),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      info['location'],
                      style: TextStyle(
                          fontSize: 28,
                          letterSpacing: 2,
                          color: Colors.blueGrey[100]),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  info['time'],
                  style: const TextStyle(fontSize: 60, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
