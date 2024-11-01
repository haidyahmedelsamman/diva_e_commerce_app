import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_model.dart';

class UserFirestoreService {
  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');

  Future<void> saveUser(UserModel user) async {
    try {
      await usersCollection.doc(user.uid).set(
            user.toMap(),
          );
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<UserModel?> getUser(String userId) async {
    try {
      DocumentSnapshot doc = await usersCollection.doc(userId).get();
      if (doc.exists) {
        return UserModel.fromMap(doc.data() as Map<String, dynamic>);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }
}
