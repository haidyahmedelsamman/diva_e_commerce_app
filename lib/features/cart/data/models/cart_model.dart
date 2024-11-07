import 'package:json_annotation/json_annotation.dart';

part 'cart_model.g.dart'; // Generates both Hive and JSON code

@JsonSerializable()
class CartModel {
  final String id;

  final String name;

  final double price;

  final int quantity;

  final String imagePath;

  CartModel({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
    required this.imagePath,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartModelToJson(this);
}
