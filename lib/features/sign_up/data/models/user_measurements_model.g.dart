// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_measurements_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMeasurementsModel _$UserMeasurementsModelFromJson(
        Map<String, dynamic> json) =>
    UserMeasurementsModel(
      height: (json['height'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      waist: (json['waist'] as num?)?.toDouble(),
      hips: (json['hips'] as num?)?.toDouble(),
      inseam: (json['inseam'] as num?)?.toDouble(),
      chest: (json['chest'] as num?)?.toDouble(),
      neck: (json['neck'] as num?)?.toDouble(),
      sleeveLength: (json['sleeveLength'] as num?)?.toDouble(),
      shoeSize: (json['shoeSize'] as num?)?.toDouble(),
      shoulderWidth: (json['shoulderWidth'] as num?)?.toDouble(),
      armLength: (json['armLength'] as num?)?.toDouble(),
      thigh: (json['thigh'] as num?)?.toDouble(),
      calf: (json['calf'] as num?)?.toDouble(),
      wristCircumference: (json['wristCircumference'] as num?)?.toDouble(),
      dressSize: json['dressSize'] as String?,
      pantSize: json['pantSize'] as String?,
    );

Map<String, dynamic> _$UserMeasurementsModelToJson(
        UserMeasurementsModel instance) =>
    <String, dynamic>{
      'height': instance.height,
      'weight': instance.weight,
      'waist': instance.waist,
      'hips': instance.hips,
      'inseam': instance.inseam,
      'chest': instance.chest,
      'neck': instance.neck,
      'sleeveLength': instance.sleeveLength,
      'shoeSize': instance.shoeSize,
      'shoulderWidth': instance.shoulderWidth,
      'armLength': instance.armLength,
      'thigh': instance.thigh,
      'calf': instance.calf,
      'wristCircumference': instance.wristCircumference,
      'dressSize': instance.dressSize,
      'pantSize': instance.pantSize,
    };
