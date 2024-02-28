import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

const FirebaseOptions firebaseOptions = FirebaseOptions(
    apiKey: "AIzaSyBdkmnCHq8Xx9DRObBnMoLD2p2zuJut7Fk",
    authDomain: "simple-ai-registry.firebaseapp.com",
    projectId: "simple-ai-registry",
    storageBucket: "simple-ai-registry.appspot.com",
    messagingSenderId: "60348996601",
    appId: "1:60348996601:web:ff20bd813018180c0b3b28");

class FirebaseLoginService extends ChangeNotifier {
  static final FirebaseLoginService _instance = FirebaseLoginService._();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  factory FirebaseLoginService() {
    return _instance;
  }

  FirebaseLoginService._();

  FirebaseAuth get auth => _auth;

  Future<void> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    await _auth.signInWithCredential(credential);
    notifyListeners();
  }

  Future<void> signInWithMagic() async {
    await _auth.signInWithEmailAndPassword(
      email: 'dev@dev.dev',
      password: '0987654321',
    );
    notifyListeners();
  }

  Future<void> signOut() async {
    await _auth.signOut();
    notifyListeners();
  }
}
