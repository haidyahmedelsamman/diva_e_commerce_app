// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserDataState {
  UserModel? get userModel => throw _privateConstructorUsedError;

  /// Create a copy of UserDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDataStateCopyWith<UserDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataStateCopyWith<$Res> {
  factory $UserDataStateCopyWith(
          UserDataState value, $Res Function(UserDataState) then) =
      _$UserDataStateCopyWithImpl<$Res, UserDataState>;
  @useResult
  $Res call({UserModel? userModel});
}

/// @nodoc
class _$UserDataStateCopyWithImpl<$Res, $Val extends UserDataState>
    implements $UserDataStateCopyWith<$Res> {
  _$UserDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = freezed,
  }) {
    return _then(_value.copyWith(
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataStateImplCopyWith<$Res>
    implements $UserDataStateCopyWith<$Res> {
  factory _$$UserDataStateImplCopyWith(
          _$UserDataStateImpl value, $Res Function(_$UserDataStateImpl) then) =
      __$$UserDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel? userModel});
}

/// @nodoc
class __$$UserDataStateImplCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res, _$UserDataStateImpl>
    implements _$$UserDataStateImplCopyWith<$Res> {
  __$$UserDataStateImplCopyWithImpl(
      _$UserDataStateImpl _value, $Res Function(_$UserDataStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = freezed,
  }) {
    return _then(_$UserDataStateImpl(
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$UserDataStateImpl implements _UserDataState {
  const _$UserDataStateImpl({required this.userModel});

  @override
  final UserModel? userModel;

  @override
  String toString() {
    return 'UserDataState(userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataStateImpl &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  /// Create a copy of UserDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataStateImplCopyWith<_$UserDataStateImpl> get copyWith =>
      __$$UserDataStateImplCopyWithImpl<_$UserDataStateImpl>(this, _$identity);
}

abstract class _UserDataState implements UserDataState {
  const factory _UserDataState({required final UserModel? userModel}) =
      _$UserDataStateImpl;

  @override
  UserModel? get userModel;

  /// Create a copy of UserDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDataStateImplCopyWith<_$UserDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
