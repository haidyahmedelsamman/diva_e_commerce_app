import 'package:diva_e_commerce_app/core/network/user_firestore_service.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserDataRepository {
  final UserFirestoreService _userFirestoreService;
  final FirebaseAuth _firebaseAuth;

  UserDataRepository(this._userFirestoreService, this._firebaseAuth);

  Future<void> addUserToFirestore(UserModel user) async {
    await _userFirestoreService.addUser(user);
  }

  Future<void> updateUserInFirestore(UserModel user) async {
    await _userFirestoreService.updateUser(user);
  }

  Future<void> deleteUserFromFirestore(String uid) async {
    await _userFirestoreService.deleteUser(uid);
  }

  Future<void> deleteUser() async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      await deleteUserFromFirestore(user.uid);

      await user.delete();
    }
  }

  Future<UserModel?> getUserById(String uid) async {
    return await _userFirestoreService.getUserById(uid);
  }

  Future<void> changePassword(String newPassword, String oldPassword) async {
    User? user = _firebaseAuth.currentUser;

    if (user != null) {
      try {
        await user.updatePassword(newPassword);
      } catch (e) {
        throw Exception("Couldn't change current password, please try again");
      }
    }
  }
}
