// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserModelCWProxy {
  UserModel displayName(String? displayName);

  UserModel profileImage(String? profileImage);

  UserModel personalInfo(UserPersonalInfoModel personalInfo);

  UserModel measurements(UserMeasurementsModel measurements);

  UserModel notificationsState(UserNotificationsState notificationsState);

  UserModel paymentMethod(UserPaymentMethod paymentMethod);

  UserModel wishList(List<ProductModel> wishList);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserModel(...).copyWith(id: 12, name: "My name")
  /// ````
  UserModel call({
    String? displayName,
    String? profileImage,
    UserPersonalInfoModel? personalInfo,
    UserMeasurementsModel? measurements,
    UserNotificationsState? notificationsState,
    UserPaymentMethod? paymentMethod,
    List<ProductModel>? wishList,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserModel.copyWith.fieldName(...)`
class _$UserModelCWProxyImpl implements _$UserModelCWProxy {
  const _$UserModelCWProxyImpl(this._value);

  final UserModel _value;

  @override
  UserModel displayName(String? displayName) => this(displayName: displayName);

  @override
  UserModel profileImage(String? profileImage) =>
      this(profileImage: profileImage);

  @override
  UserModel personalInfo(UserPersonalInfoModel personalInfo) =>
      this(personalInfo: personalInfo);

  @override
  UserModel measurements(UserMeasurementsModel measurements) =>
      this(measurements: measurements);

  @override
  UserModel notificationsState(UserNotificationsState notificationsState) =>
      this(notificationsState: notificationsState);

  @override
  UserModel paymentMethod(UserPaymentMethod paymentMethod) =>
      this(paymentMethod: paymentMethod);

  @override
  UserModel wishList(List<ProductModel> wishList) => this(wishList: wishList);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserModel(...).copyWith(id: 12, name: "My name")
  /// ````
  UserModel call({
    Object? displayName = const $CopyWithPlaceholder(),
    Object? profileImage = const $CopyWithPlaceholder(),
    Object? personalInfo = const $CopyWithPlaceholder(),
    Object? measurements = const $CopyWithPlaceholder(),
    Object? notificationsState = const $CopyWithPlaceholder(),
    Object? paymentMethod = const $CopyWithPlaceholder(),
    Object? wishList = const $CopyWithPlaceholder(),
  }) {
    return UserModel(
      uid: _value.uid,
      email: _value.email,
      displayName: displayName == const $CopyWithPlaceholder()
          ? _value.displayName
          // ignore: cast_nullable_to_non_nullable
          : displayName as String?,
      profileImage: profileImage == const $CopyWithPlaceholder()
          ? _value.profileImage
          // ignore: cast_nullable_to_non_nullable
          : profileImage as String?,
      personalInfo:
          personalInfo == const $CopyWithPlaceholder() || personalInfo == null
              ? _value.personalInfo
              // ignore: cast_nullable_to_non_nullable
              : personalInfo as UserPersonalInfoModel,
      measurements:
          measurements == const $CopyWithPlaceholder() || measurements == null
              ? _value.measurements
              // ignore: cast_nullable_to_non_nullable
              : measurements as UserMeasurementsModel,
      notificationsState: notificationsState == const $CopyWithPlaceholder() ||
              notificationsState == null
          ? _value.notificationsState
          // ignore: cast_nullable_to_non_nullable
          : notificationsState as UserNotificationsState,
      paymentMethod:
          paymentMethod == const $CopyWithPlaceholder() || paymentMethod == null
              ? _value.paymentMethod
              // ignore: cast_nullable_to_non_nullable
              : paymentMethod as UserPaymentMethod,
      wishList: wishList == const $CopyWithPlaceholder() || wishList == null
          ? _value.wishList
          // ignore: cast_nullable_to_non_nullable
          : wishList as List<ProductModel>,
    );
  }
}

extension $UserModelCopyWith on UserModel {
  /// Returns a callable class that can be used as follows: `instanceOfUserModel.copyWith(...)` or like so:`instanceOfUserModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserModelCWProxy get copyWith => _$UserModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String?,
      profileImage: json['profileImage'] as String?,
      personalInfo: UserPersonalInfoModel.fromJson(
          json['personalInfo'] as Map<String, dynamic>),
      measurements: UserMeasurementsModel.fromJson(
          json['measurements'] as Map<String, dynamic>),
      notificationsState: $enumDecodeNullable(
              _$UserNotificationsStateEnumMap, json['notificationsState']) ??
          UserNotificationsState.on,
      paymentMethod: $enumDecodeNullable(
              _$UserPaymentMethodEnumMap, json['paymentMethod']) ??
          UserPaymentMethod.cash,
      wishList: (json['wishList'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'profileImage': instance.profileImage,
      'personalInfo': instance.personalInfo,
      'notificationsState':
          _$UserNotificationsStateEnumMap[instance.notificationsState]!,
      'measurements': instance.measurements,
      'paymentMethod': _$UserPaymentMethodEnumMap[instance.paymentMethod]!,
      'wishList': instance.wishList,
    };

const _$UserNotificationsStateEnumMap = {
  UserNotificationsState.on: 'on',
  UserNotificationsState.off: 'off',
};

const _$UserPaymentMethodEnumMap = {
  UserPaymentMethod.cash: 'cash',
  UserPaymentMethod.card: 'card',
};
