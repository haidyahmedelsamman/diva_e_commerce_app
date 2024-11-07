import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_model.dart';

class UserFirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String _userCollection = 'users';

  Future<void> addUser(UserModel user) async {
    await _firestore
        .collection(_userCollection)
        .doc(user.uid)
        .set(user.toMap());
  }

  Future<void> updateUser(UserModel user) async {
    await _firestore
        .collection(_userCollection)
        .doc(user.uid)
        .update(user.toMap());
  }

  Future<void> deleteUser(String uid) async {
    await _firestore.collection(_userCollection).doc(uid).delete();
  }

  Future<UserModel?> getUserById(String uid) async {
    DocumentSnapshot userDoc =
        await _firestore.collection(_userCollection).doc(uid).get();
    if (userDoc.exists) {
      return UserModel.fromMap(
        userDoc.data() as Map<String, dynamic>,
      );
    }
    return null;
  }
}
