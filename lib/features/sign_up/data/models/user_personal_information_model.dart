import 'package:json_annotation/json_annotation.dart';

part 'user_personal_information_model.g.dart';

@JsonSerializable()
class UserPersonalInfoModel {
  final String? firstName;
  final String? lastName;
  final String? phoneNumber;
  final String? address;
  final String? city;
  final String? state;
  final String? country;
  final String? postalCode;
  final DateTime? dateOfBirth;
  final String? gender;
  final String? preferredLanguage;
  final String? nationality;

  UserPersonalInfoModel({
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.address,
    this.city,
    this.state,
    this.country,
    this.postalCode,
    this.dateOfBirth,
    this.gender,
    this.preferredLanguage,
    this.nationality,
  });

  factory UserPersonalInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserPersonalInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserPersonalInfoModelToJson(this);
}
