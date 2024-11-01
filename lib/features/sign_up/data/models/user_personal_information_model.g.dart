// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_personal_information_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserPersonalInfoModelCWProxy {
  UserPersonalInfoModel firstName(String? firstName);

  UserPersonalInfoModel lastName(String? lastName);

  UserPersonalInfoModel phoneNumber(String? phoneNumber);

  UserPersonalInfoModel address(String? address);

  UserPersonalInfoModel city(String? city);

  UserPersonalInfoModel state(String? state);

  UserPersonalInfoModel country(String? country);

  UserPersonalInfoModel postalCode(String? postalCode);

  UserPersonalInfoModel dateOfBirth(DateTime? dateOfBirth);

  UserPersonalInfoModel gender(Gender? gender);

  UserPersonalInfoModel preferredLanguage(String? preferredLanguage);

  UserPersonalInfoModel nationality(String? nationality);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserPersonalInfoModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserPersonalInfoModel(...).copyWith(id: 12, name: "My name")
  /// ````
  UserPersonalInfoModel call({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? address,
    String? city,
    String? state,
    String? country,
    String? postalCode,
    DateTime? dateOfBirth,
    Gender? gender,
    String? preferredLanguage,
    String? nationality,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserPersonalInfoModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserPersonalInfoModel.copyWith.fieldName(...)`
class _$UserPersonalInfoModelCWProxyImpl
    implements _$UserPersonalInfoModelCWProxy {
  const _$UserPersonalInfoModelCWProxyImpl(this._value);

  final UserPersonalInfoModel _value;

  @override
  UserPersonalInfoModel firstName(String? firstName) =>
      this(firstName: firstName);

  @override
  UserPersonalInfoModel lastName(String? lastName) => this(lastName: lastName);

  @override
  UserPersonalInfoModel phoneNumber(String? phoneNumber) =>
      this(phoneNumber: phoneNumber);

  @override
  UserPersonalInfoModel address(String? address) => this(address: address);

  @override
  UserPersonalInfoModel city(String? city) => this(city: city);

  @override
  UserPersonalInfoModel state(String? state) => this(state: state);

  @override
  UserPersonalInfoModel country(String? country) => this(country: country);

  @override
  UserPersonalInfoModel postalCode(String? postalCode) =>
      this(postalCode: postalCode);

  @override
  UserPersonalInfoModel dateOfBirth(DateTime? dateOfBirth) =>
      this(dateOfBirth: dateOfBirth);

  @override
  UserPersonalInfoModel gender(Gender? gender) => this(gender: gender);

  @override
  UserPersonalInfoModel preferredLanguage(String? preferredLanguage) =>
      this(preferredLanguage: preferredLanguage);

  @override
  UserPersonalInfoModel nationality(String? nationality) =>
      this(nationality: nationality);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserPersonalInfoModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserPersonalInfoModel(...).copyWith(id: 12, name: "My name")
  /// ````
  UserPersonalInfoModel call({
    Object? firstName = const $CopyWithPlaceholder(),
    Object? lastName = const $CopyWithPlaceholder(),
    Object? phoneNumber = const $CopyWithPlaceholder(),
    Object? address = const $CopyWithPlaceholder(),
    Object? city = const $CopyWithPlaceholder(),
    Object? state = const $CopyWithPlaceholder(),
    Object? country = const $CopyWithPlaceholder(),
    Object? postalCode = const $CopyWithPlaceholder(),
    Object? dateOfBirth = const $CopyWithPlaceholder(),
    Object? gender = const $CopyWithPlaceholder(),
    Object? preferredLanguage = const $CopyWithPlaceholder(),
    Object? nationality = const $CopyWithPlaceholder(),
  }) {
    return UserPersonalInfoModel(
      firstName: firstName == const $CopyWithPlaceholder()
          ? _value.firstName
          // ignore: cast_nullable_to_non_nullable
          : firstName as String?,
      lastName: lastName == const $CopyWithPlaceholder()
          ? _value.lastName
          // ignore: cast_nullable_to_non_nullable
          : lastName as String?,
      phoneNumber: phoneNumber == const $CopyWithPlaceholder()
          ? _value.phoneNumber
          // ignore: cast_nullable_to_non_nullable
          : phoneNumber as String?,
      address: address == const $CopyWithPlaceholder()
          ? _value.address
          // ignore: cast_nullable_to_non_nullable
          : address as String?,
      city: city == const $CopyWithPlaceholder()
          ? _value.city
          // ignore: cast_nullable_to_non_nullable
          : city as String?,
      state: state == const $CopyWithPlaceholder()
          ? _value.state
          // ignore: cast_nullable_to_non_nullable
          : state as String?,
      country: country == const $CopyWithPlaceholder()
          ? _value.country
          // ignore: cast_nullable_to_non_nullable
          : country as String?,
      postalCode: postalCode == const $CopyWithPlaceholder()
          ? _value.postalCode
          // ignore: cast_nullable_to_non_nullable
          : postalCode as String?,
      dateOfBirth: dateOfBirth == const $CopyWithPlaceholder()
          ? _value.dateOfBirth
          // ignore: cast_nullable_to_non_nullable
          : dateOfBirth as DateTime?,
      gender: gender == const $CopyWithPlaceholder()
          ? _value.gender
          // ignore: cast_nullable_to_non_nullable
          : gender as Gender?,
      preferredLanguage: preferredLanguage == const $CopyWithPlaceholder()
          ? _value.preferredLanguage
          // ignore: cast_nullable_to_non_nullable
          : preferredLanguage as String?,
      nationality: nationality == const $CopyWithPlaceholder()
          ? _value.nationality
          // ignore: cast_nullable_to_non_nullable
          : nationality as String?,
    );
  }
}

extension $UserPersonalInfoModelCopyWith on UserPersonalInfoModel {
  /// Returns a callable class that can be used as follows: `instanceOfUserPersonalInfoModel.copyWith(...)` or like so:`instanceOfUserPersonalInfoModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserPersonalInfoModelCWProxy get copyWith =>
      _$UserPersonalInfoModelCWProxyImpl(this);
}

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
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
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
      'gender': _$GenderEnumMap[instance.gender],
      'preferredLanguage': instance.preferredLanguage,
      'nationality': instance.nationality,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};
