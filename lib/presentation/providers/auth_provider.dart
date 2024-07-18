import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  StreamSubscription? _authStateChanges;

  User? _user;

  User? get user => _user;

  Future<void> signIn({required String email, required String password}) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _user = userCredential.user;
      subscribedToAuthStateChanges();
      notifyListeners();
    } on FirebaseAuthException catch (e) {
      throw AuthException(e.message ?? 'Failed to sign in');
    }
  }

  void subscribedToAuthStateChanges() {
    if (_authStateChanges != null) {
      _authStateChanges?.cancel();
    }
    final sub = _auth.authStateChanges().listen((User? user) {
      _user = user;
      notifyListeners();
    });
    _authStateChanges = sub;
  }

  Future<void> signUp(
      {required String email,
      required String password,
      required String name}) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      _user = userCredential.user;
      await _firestore.collection('users').doc(_user?.uid).set({
        'name': name,
        'email': email,
      });
      subscribedToAuthStateChanges();
      notifyListeners();
    } on FirebaseAuthException catch (e) {
      throw AuthException(e.message ?? 'Failed to sign up');
    }
  }

  void signOut() async {
    await _auth.signOut();
    _authStateChanges?.cancel();
    _user = null;
    notifyListeners();
  }

  @override
  void dispose() {
    _authStateChanges?.cancel();
    super.dispose();
  }
}

class AuthException implements Exception {
  final String message;
  AuthException(this.message);
}
