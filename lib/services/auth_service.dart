import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static Future<bool> login({required String npm, required String password}) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: "$npm@example.com",
        password: password,
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}
