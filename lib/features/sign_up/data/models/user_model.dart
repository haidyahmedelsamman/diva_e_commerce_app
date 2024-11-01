class UserModel {
  @CopyWithField(immutable: true)
  final String uid;
  @CopyWithField(immutable: true)
  final String email;

  UserModel({
    required this.uid,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
    );
  }
}
