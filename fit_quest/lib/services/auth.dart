import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fit_quest/models/user.dart';

import '../firebase_options.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  CustomUser? _firebaseUser(User? _user) {
    return _user != null ? CustomUser(uid: _user.uid) : null;
  }

  Stream<CustomUser?> get user {
    //return _auth.authStateChanges().map((User? user) => _firebaseUser(user));
    return _auth.authStateChanges().map(_firebaseUser);
  }

  //sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _firebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  //signin with email and password

  //register with email and password

  //sign out
}
