import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;
  Future<User?> signup(
    String email,
    String password,
    dynamic authCredential,
  ) async {
    try {
      final AuthCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (authCredential.user != null) {
        log("User created successfully");
        return authCredential.user!;
      }
    } on FirebaseAuthException catch (e) {
      log(e.message!);
      rethrow;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
    return null;
  }

  Future<void> logout() async {
    try {
      await _auth.signOut();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
