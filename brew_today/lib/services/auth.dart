import 'package:firebase_auth/firebase_auth.dart';
import 'package:brew_today/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService {
  //anonymus
  Future signInAnon() async {
    await Firebase.initializeApp();
    final FirebaseAuth _auth = FirebaseAuth.instance;
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  //email and password
  //register
  //signout
}
