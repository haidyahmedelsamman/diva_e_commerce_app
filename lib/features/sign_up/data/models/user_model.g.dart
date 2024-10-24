// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserModelCWProxy {
  UserModel paymentMethod(UserPaymentMethod paymentMethod);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserModel(...).copyWith(id: 12, name: "My name")
  /// ````
  UserModel call({
    UserPaymentMethod? paymentMethod,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserModel.copyWith.fieldName(...)`
class _$UserModelCWProxyImpl implements _$UserModelCWProxy {
  const _$UserModelCWProxyImpl(this._value);

  final UserModel _value;

  @override
  UserModel paymentMethod(UserPaymentMethod paymentMethod) =>
      this(paymentMethod: paymentMethod);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserModel(...).copyWith(id: 12, name: "My name")
  /// ````
  UserModel call({
    Object? paymentMethod = const $CopyWithPlaceholder(),
  }) {
    return UserModel(
      uid: _value.uid,
      email: _value.email,
      paymentMethod:
          paymentMethod == const $CopyWithPlaceholder() || paymentMethod == null
              ? _value.paymentMethod
              // ignore: cast_nullable_to_non_nullable
              : paymentMethod as UserPaymentMethod,
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
      paymentMethod: $enumDecodeNullable(
              _$UserPaymentMethodEnumMap, json['paymentMethod']) ??
          UserPaymentMethod.cash,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'paymentMethod': _$UserPaymentMethodEnumMap[instance.paymentMethod]!,
    };

const _$UserPaymentMethodEnumMap = {
  UserPaymentMethod.cash: 'cash',
  UserPaymentMethod.credtCard: 'credtCard',
};
