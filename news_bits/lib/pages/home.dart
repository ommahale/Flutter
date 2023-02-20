import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List artSet = ModalRoute.of(context)!.settings.arguments != null
        ? ModalRoute.of(context)!.settings.arguments as List
        : [];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.now_widgets_rounded,
                  color: Colors.blueAccent[700],
                  size: 50,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Colors.blueAccent, width: 5))),
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      "NewsBits",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  shadowColor: MaterialStateProperty.all(Colors.blueGrey[200]),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/articles',
                      arguments: artSet);
                },
                child: SizedBox(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Proceed to app',
                        style:
                            TextStyle(fontSize: 18, color: Colors.blueAccent),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.blueAccent,
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
