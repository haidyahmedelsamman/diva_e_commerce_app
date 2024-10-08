import 'package:firebase_auth/firebase_auth.dart';

import '../models/user_model.dart';

class AuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Future<UserModel?> signUpWithEmailAndPassword(
      String email, String password, String username) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      User? user = userCredential.user;

      if (user != null) {
        UserModel newUser = UserModel(
          uid: user.uid,
          email: email,
          username: username,
        );

        return newUser;
      }
    } catch (e) {
      print("Error during sign up: $e");
    }
    return null;
  }
}
