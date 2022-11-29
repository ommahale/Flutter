// ignore: file_names
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/thumb.jpg'),
                radius: 100,
              ),
            ),
            const Divider(
              height: 60,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.person,
                  color: Colors.amberAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'NAME',
                  style: TextStyle(
                      letterSpacing: 1,
                      color: Colors.amberAccent,
                      fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Om Mahale',
              style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.grey[900],
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.mail,
                  color: Colors.amberAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'MAIL',
                  style: TextStyle(
                      letterSpacing: 1,
                      color: Colors.amberAccent,
                      fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'omanohar15@gmail.com',
              style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.grey[900],
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
