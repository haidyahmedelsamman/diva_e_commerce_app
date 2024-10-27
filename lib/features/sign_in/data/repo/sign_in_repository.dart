import 'package:diva_e_commerce_app/core/network/user_firestore_service.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInRepository {
  final FirebaseAuth _firebaseAuth;
  final UserFirestoreService _userFirestoreService;

  SignInRepository(this._firebaseAuth, this._userFirestoreService);

  Future<UserModel?> signIn(String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        final user =
            _userFirestoreService.getUserById(userCredential.user!.uid);
        return user;
      }
      return null;
    } catch (e) {
      throw Exception('Error in sign in: $e');
    }
  }

  UserModel? checkIfUserAuthenticated() {
    final currentUser = _firebaseAuth.currentUser;
    if (currentUser != null) {
      return UserModel.fromFirebaseUser(currentUser);
    }
    return null;
  }
}
