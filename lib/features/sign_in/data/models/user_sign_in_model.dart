class UserSignInModel {
  final String uid;
  final String email;

  UserSignInModel({
    required this.uid,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
    };
  }

  factory UserSignInModel.fromMap(Map<String, dynamic> map) {
    return UserSignInModel(
      uid: map['uid'],
      email: map['email'],
    );
  }
}
