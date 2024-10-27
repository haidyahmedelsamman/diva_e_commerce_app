// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_personal_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPersonalInfoModel _$UserPersonalInfoModelFromJson(
        Map<String, dynamic> json) =>
    UserPersonalInfoModel(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      postalCode: json['postalCode'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      gender: json['gender'] as String?,
      preferredLanguage: json['preferredLanguage'] as String?,
      nationality: json['nationality'] as String?,
    );

Map<String, dynamic> _$UserPersonalInfoModelToJson(
        UserPersonalInfoModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'postalCode': instance.postalCode,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'gender': instance.gender,
      'preferredLanguage': instance.preferredLanguage,
      'nationality': instance.nationality,
    };
