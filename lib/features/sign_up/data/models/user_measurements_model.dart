import 'package:json_annotation/json_annotation.dart';

part 'user_measurements_model.g.dart';

@JsonSerializable()
class UserMeasurementsModel {
  final double? height;
  final double? weight;
  final double? waist;
  final double? hips;
  final double? inseam;
  final double? chest;
  final double? neck;
  final double? sleeveLength;
  final double? shoeSize;
  final double? shoulderWidth;
  final double? armLength;
  final double? thigh;
  final double? calf;
  final double? wristCircumference;
  final String? dressSize;
  final String? pantSize;

  UserMeasurementsModel({
    this.height,
    this.weight,
    this.waist,
    this.hips,
    this.inseam,
    this.chest,
    this.neck,
    this.sleeveLength,
    this.shoeSize,
    this.shoulderWidth,
    this.armLength,
    this.thigh,
    this.calf,
    this.wristCircumference,
    this.dressSize,
    this.pantSize,
  });

  factory UserMeasurementsModel.fromJson(Map<String, dynamic> json) =>
      _$UserMeasurementsModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserMeasurementsModelToJson(this);
}
