// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_switching_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeSwitchingState {
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  /// Create a copy of ThemeSwitchingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemeSwitchingStateCopyWith<ThemeSwitchingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeSwitchingStateCopyWith<$Res> {
  factory $ThemeSwitchingStateCopyWith(
          ThemeSwitchingState value, $Res Function(ThemeSwitchingState) then) =
      _$ThemeSwitchingStateCopyWithImpl<$Res, ThemeSwitchingState>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class _$ThemeSwitchingStateCopyWithImpl<$Res, $Val extends ThemeSwitchingState>
    implements $ThemeSwitchingStateCopyWith<$Res> {
  _$ThemeSwitchingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeSwitchingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeSwitchingStateImplCopyWith<$Res>
    implements $ThemeSwitchingStateCopyWith<$Res> {
  factory _$$ThemeSwitchingStateImplCopyWith(_$ThemeSwitchingStateImpl value,
          $Res Function(_$ThemeSwitchingStateImpl) then) =
      __$$ThemeSwitchingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$ThemeSwitchingStateImplCopyWithImpl<$Res>
    extends _$ThemeSwitchingStateCopyWithImpl<$Res, _$ThemeSwitchingStateImpl>
    implements _$$ThemeSwitchingStateImplCopyWith<$Res> {
  __$$ThemeSwitchingStateImplCopyWithImpl(_$ThemeSwitchingStateImpl _value,
      $Res Function(_$ThemeSwitchingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeSwitchingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$ThemeSwitchingStateImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$ThemeSwitchingStateImpl implements _ThemeSwitchingState {
  const _$ThemeSwitchingStateImpl({this.themeMode = ThemeMode.system});

  @override
  @JsonKey()
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'ThemeSwitchingState(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeSwitchingStateImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  /// Create a copy of ThemeSwitchingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeSwitchingStateImplCopyWith<_$ThemeSwitchingStateImpl> get copyWith =>
      __$$ThemeSwitchingStateImplCopyWithImpl<_$ThemeSwitchingStateImpl>(
          this, _$identity);
}

abstract class _ThemeSwitchingState implements ThemeSwitchingState {
  const factory _ThemeSwitchingState({final ThemeMode themeMode}) =
      _$ThemeSwitchingStateImpl;

  @override
  ThemeMode get themeMode;

  /// Create a copy of ThemeSwitchingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeSwitchingStateImplCopyWith<_$ThemeSwitchingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
