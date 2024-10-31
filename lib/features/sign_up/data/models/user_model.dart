import 'package:diva_e_commerce_app/features/profile/data/models/user_payment_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'user_model.g.dart';

@JsonSerializable()
@CopyWith()
class UserModel {
  @CopyWithField(immutable: true)
  final String uid;
  @CopyWithField(immutable: true)
  final String email;
  final UserPaymentMethod paymentMethod;
  UserModel({
    required this.uid,
    required this.email,
    this.paymentMethod = UserPaymentMethod.cash,
  });

  factory UserModel.fromMap(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toMap() => _$UserModelToJson(this);
}
