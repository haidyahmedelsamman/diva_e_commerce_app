class SiginupRequestBody {
  final String email;
  final String firstName;
  final String? lastName;
  final String phoneNumber;
  final String password;
  final String displayName;

  SiginupRequestBody({
    required this.email,
    required this.firstName,
    this.lastName,
    required this.phoneNumber,
    required this.password,
    required this.displayName,
  });
}
