import 'package:firebase_auth/firebase_auth.dart';

import '../user_sign_in_model.dart';

class SignInRepository {
  final FirebaseAuth _firebaseAuth;

  SignInRepository(this._firebaseAuth);

  Future<UserSignInModel?> signIn(
    String email,
    String password,
  ) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return UserSignInModel(
        uid: userCredential.user!.uid,
        email: userCredential.user!.email!,
      );
    } catch (e) {
      throw Exception('Error in sign in: $e');
    }
  }
}
