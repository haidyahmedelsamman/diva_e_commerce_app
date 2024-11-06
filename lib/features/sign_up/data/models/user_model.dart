import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:diva_e_commerce_app/core/models/category_products_response_model.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/siginup_request_body.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_measurements_model.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_notifications_state_model.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_payment_method.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_personal_information_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
@CopyWith()
class UserModel {
  @CopyWithField(immutable: true)
  final String uid;
  @CopyWithField(immutable: true)
  final String email;
  final String? displayName;
  final String? profileImage;
  final UserPersonalInfoModel personalInfo;
  final UserNotificationsState notificationsState;
  final UserMeasurementsModel measurements;
  final UserPaymentMethod paymentMethod;
  List<ProductModel> wishList;

  UserModel({
    required this.uid,
    required this.email,
    this.displayName,
    this.profileImage,
    required this.personalInfo,
    required this.measurements,
    this.notificationsState = UserNotificationsState.on,
    this.paymentMethod = UserPaymentMethod.cash,
    this.wishList = const [],
  });

  Map<String, dynamic> toMap() => <String, dynamic>{
        'uid': uid,
        'email': email,
        'displayName': displayName,
        'profileImage': profileImage,
        'personalInfo': personalInfo.toJson(),
        'notificationsState':
            _$UserNotificationsStateEnumMap[notificationsState]!,
        'measurements': measurements.toJson(),
        'paymentMethod': _$UserPaymentMethodEnumMap[paymentMethod]!,
        'wishList': wishList.map((product) => product.toJson()).toList(),
      };

  factory UserModel.fromMap(Map<String, dynamic> map) =>
      _$UserModelFromJson(map);

  factory UserModel.fromFirebaseUser(
      User user, SiginupRequestBody signupRequest) {
    return UserModel(
      uid: user.uid,
      email: user.email!,
      displayName: user.displayName,
      profileImage: user.photoURL,
      personalInfo: UserPersonalInfoModel(
        firstName: signupRequest.firstName,
        lastName: signupRequest.lastName,
        phoneNumber: signupRequest.phoneNumber,
      ),
      measurements: UserMeasurementsModel(),
    );
  }
}
