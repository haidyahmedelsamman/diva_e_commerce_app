import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_measurements_model.g.dart';

@JsonSerializable()
@CopyWith()
class UserMeasurementsModel {
  final String? height;
  final String? weight;

  final String? shoeSize;

  final String? dressSize;
  final String? pantSize;

  UserMeasurementsModel({
    this.height,
    this.weight,
    this.shoeSize,
    this.dressSize,
    this.pantSize,
  });

  factory UserMeasurementsModel.fromJson(Map<String, dynamic> json) =>
      _$UserMeasurementsModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserMeasurementsModelToJson(this);
}
