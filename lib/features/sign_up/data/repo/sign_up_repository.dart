import 'package:diva_e_commerce_app/core/network/user_firestore_service.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/siginup_request_body.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/user_model.dart';

class SignUpRepository {
  final FirebaseAuth _firebaseAuth;
  final UserFirestoreService _userFirestoreService;
  SignUpRepository(
    this._firebaseAuth,
    this._userFirestoreService,
  );

  Future<UserModel?> signUp(SiginupRequestBody signupRequest) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: signupRequest.email,
        password: signupRequest.password,
      );
      await userCredential.user!.updateDisplayName(signupRequest.displayName);
      final user =
          UserModel.fromFirebaseUser(userCredential.user!, signupRequest);
      await _userFirestoreService.addUser(user);
      return user;
    } catch (e) {
      throw Exception('Error in sign up: $e');
    }
  }
}
