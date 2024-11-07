// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_measurements_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserMeasurementsModelCWProxy {
  UserMeasurementsModel height(String? height);

  UserMeasurementsModel weight(String? weight);

  UserMeasurementsModel shoeSize(String? shoeSize);

  UserMeasurementsModel dressSize(String? dressSize);

  UserMeasurementsModel pantSize(String? pantSize);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserMeasurementsModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserMeasurementsModel(...).copyWith(id: 12, name: "My name")
  /// ````
  UserMeasurementsModel call({
    String? height,
    String? weight,
    String? shoeSize,
    String? dressSize,
    String? pantSize,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserMeasurementsModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserMeasurementsModel.copyWith.fieldName(...)`
class _$UserMeasurementsModelCWProxyImpl
    implements _$UserMeasurementsModelCWProxy {
  const _$UserMeasurementsModelCWProxyImpl(this._value);

  final UserMeasurementsModel _value;

  @override
  UserMeasurementsModel height(String? height) => this(height: height);

  @override
  UserMeasurementsModel weight(String? weight) => this(weight: weight);

  @override
  UserMeasurementsModel shoeSize(String? shoeSize) => this(shoeSize: shoeSize);

  @override
  UserMeasurementsModel dressSize(String? dressSize) =>
      this(dressSize: dressSize);

  @override
  UserMeasurementsModel pantSize(String? pantSize) => this(pantSize: pantSize);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserMeasurementsModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserMeasurementsModel(...).copyWith(id: 12, name: "My name")
  /// ````
  UserMeasurementsModel call({
    Object? height = const $CopyWithPlaceholder(),
    Object? weight = const $CopyWithPlaceholder(),
    Object? shoeSize = const $CopyWithPlaceholder(),
    Object? dressSize = const $CopyWithPlaceholder(),
    Object? pantSize = const $CopyWithPlaceholder(),
  }) {
    return UserMeasurementsModel(
      height: height == const $CopyWithPlaceholder()
          ? _value.height
          // ignore: cast_nullable_to_non_nullable
          : height as String?,
      weight: weight == const $CopyWithPlaceholder()
          ? _value.weight
          // ignore: cast_nullable_to_non_nullable
          : weight as String?,
      shoeSize: shoeSize == const $CopyWithPlaceholder()
          ? _value.shoeSize
          // ignore: cast_nullable_to_non_nullable
          : shoeSize as String?,
      dressSize: dressSize == const $CopyWithPlaceholder()
          ? _value.dressSize
          // ignore: cast_nullable_to_non_nullable
          : dressSize as String?,
      pantSize: pantSize == const $CopyWithPlaceholder()
          ? _value.pantSize
          // ignore: cast_nullable_to_non_nullable
          : pantSize as String?,
    );
  }
}

extension $UserMeasurementsModelCopyWith on UserMeasurementsModel {
  /// Returns a callable class that can be used as follows: `instanceOfUserMeasurementsModel.copyWith(...)` or like so:`instanceOfUserMeasurementsModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserMeasurementsModelCWProxy get copyWith =>
      _$UserMeasurementsModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMeasurementsModel _$UserMeasurementsModelFromJson(
        Map<String, dynamic> json) =>
    UserMeasurementsModel(
      height: json['height'] as String?,
      weight: json['weight'] as String?,
      shoeSize: json['shoeSize'] as String?,
      dressSize: json['dressSize'] as String?,
      pantSize: json['pantSize'] as String?,
    );

Map<String, dynamic> _$UserMeasurementsModelToJson(
        UserMeasurementsModel instance) =>
    <String, dynamic>{
      'height': instance.height,
      'weight': instance.weight,
      'shoeSize': instance.shoeSize,
      'dressSize': instance.dressSize,
      'pantSize': instance.pantSize,
    };
