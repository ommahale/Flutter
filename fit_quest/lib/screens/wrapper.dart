import 'package:fit_quest/screens/authenticate/authenticate.dart';
import 'package:fit_quest/screens/authenticate/signin.dart';
import 'package:fit_quest/screens/home/home.dart';
import 'package:fit_quest/services/auth.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Authenticate();
  }
}
