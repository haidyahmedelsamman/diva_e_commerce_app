import 'package:firebase_auth/firebase_auth.dart';

import '../models/user_model.dart';

class SignUpRepository {
  final FirebaseAuth _firebaseAuth;

  SignUpRepository(this._firebaseAuth);

  Future<UserModel?> signUp(
    String email,
    String password,
  ) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return UserModel(
        uid: userCredential.user!.uid,
        email: userCredential.user!.email!,
      );
    } catch (e) {
      throw Exception('Error in sign up: $e');
    }
  }
}
