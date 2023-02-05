import 'package:firebase_core/firebase_core.dart';
import 'package:fit_quest/screens/authenticate/signin.dart';
import 'package:flutter/material.dart';

import '../../firebase_options.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Signin();
  }
}
