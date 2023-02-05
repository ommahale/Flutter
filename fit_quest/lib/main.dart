import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fit_quest/firebase_options.dart';
import 'package:fit_quest/models/user.dart';
import 'package:fit_quest/screens/wrapper.dart';
import 'package:fit_quest/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<CustomUser?>.value(
      initialData: CustomUser(),
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Wrapper(),
        theme: ThemeData(
            primaryColor: Colors.blueGrey,
            backgroundColor: Colors.blueGrey[900]),
      ),
    );
  }
}
