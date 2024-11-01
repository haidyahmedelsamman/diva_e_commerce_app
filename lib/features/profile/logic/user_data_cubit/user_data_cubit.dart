// ignore_for_file: must_call_super

import 'package:bloc/bloc.dart';
import 'package:diva_e_commerce_app/core/secure_storage/current_user_secure_storage_repository.dart';
import 'package:diva_e_commerce_app/features/profile/data/repositories/user_data_repository.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_state.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/gender.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_measurements_model.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_model.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_notifications_state_model.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_payment_method.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_personal_information_model.dart';
import 'package:flutter/material.dart';

class UserDataCubit extends Cubit<UserDataState> {
  final UserDataRepository _userDataRepository;
  final CurrentUserSecureStorageRepository _currentUserSecureStorageRepository;
  String? country;
  String? userState;
  Gender? gender;
  late final addressTextEditingController =
      TextEditingController(text: state.whenOrNull(
    authenticated: (user) {
      return user.personalInfo.address;
    },
  ));
  UserDataCubit(
    this._userDataRepository,
    this._currentUserSecureStorageRepository,
  ) : super(const UserDataState.initial());

  void updateUserData(UserModel user) {
    emit(
      UserDataState.authenticated(user),
    );
  }

  void updateUserPaymentMethod(UserPaymentMethod paymentMethod) {
    state.whenOrNull(
      authenticated: (user) {
        final newUser = user.copyWith(paymentMethod: paymentMethod);
        _userDataRepository.updateUserInFirestore(newUser);
        emit(
          UserDataState.authenticated(newUser),
        );
      },
    );
  }

  void updateUserNotificationsState(UserNotificationsState notificationsState) {
    state.whenOrNull(
      authenticated: (user) {
        final newUser = user.copyWith(notificationsState: notificationsState);
        _userDataRepository.updateUserInFirestore(newUser);
        emit(
          UserDataState.authenticated(newUser),
        );
      },
    );
  }

  void updateUserPersonalInfo(UserPersonalInfoModel personalInfo) {
    state.whenOrNull(
      authenticated: (user) {
        final newUser = user.copyWith(personalInfo: personalInfo);
        _userDataRepository.updateUserInFirestore(newUser);
        emit(
          UserDataState.authenticated(newUser),
        );
      },
    );
  }

  void updateUserMeasurments(UserMeasurementsModel measurements) {
    state.whenOrNull(
      authenticated: (user) {
        final newUser = user.copyWith(measurements: measurements);
        _userDataRepository.updateUserInFirestore(newUser);
        emit(
          UserDataState.authenticated(newUser),
        );
      },
    );
  }

  void updateUserAddress() {
    state.whenOrNull(
      authenticated: (user) {
        final personalInfo = user.personalInfo.copyWith(
          address: addressTextEditingController.text,
          country: country ?? user.personalInfo.country,
          state: userState ?? user.personalInfo.state,
        );
        final newUser = user.copyWith(personalInfo: personalInfo);
        _userDataRepository.updateUserInFirestore(newUser);
        emit(
          UserDataState.authenticated(newUser),
        );
      },
    );
  }

  void changeUserPassword(String newPassword, String oldPassword) {
    state.whenOrNull(
      authenticated: (user) async {
        emit(
          const UserDataState.loading(),
        );
        try {
          final storedPassword =
              await _currentUserSecureStorageRepository.getPassword();

          if (oldPassword == storedPassword) {
            await _userDataRepository.changePassword(
                newPassword, storedPassword!);
            await _currentUserSecureStorageRepository.savePassword(newPassword);
            emit(
              const UserDataState.success(),
            );
            emit(
              UserDataState.authenticated(user),
            );
          } else {
            emit(const UserDataState.error(errorMessage: 'Wrong password'));
          }
        } catch (e) {
          emit(
            const UserDataState.error(errorMessage: 'Something went wrong'),
          );
          emit(
            UserDataState.authenticated(user),
          );
        }
      },
    );
  }

  void deleteUser() async {
    await _userDataRepository.deleteUser();
  }

  void resetUserPassword() async {
    _userDataRepository;
  }

  @override
  Future<void> close() async {}
}
