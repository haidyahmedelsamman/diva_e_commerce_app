// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String> categoryDataList) categoriesSuccess,
    required TResult Function(String errorMessage) categoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String> categoryDataList)? categoriesSuccess,
    TResult? Function(String errorMessage)? categoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String> categoryDataList)? categoriesSuccess,
    TResult Function(String errorMessage)? categoriesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(CategoriesError value) categoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String> categoryDataList) categoriesSuccess,
    required TResult Function(String errorMessage) categoriesError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String> categoryDataList)? categoriesSuccess,
    TResult? Function(String errorMessage)? categoriesError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String> categoryDataList)? categoriesSuccess,
    TResult Function(String errorMessage)? categoriesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(CategoriesError value) categoriesError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CategoriesLoadingImplCopyWith<$Res> {
  factory _$$CategoriesLoadingImplCopyWith(_$CategoriesLoadingImpl value,
          $Res Function(_$CategoriesLoadingImpl) then) =
      __$$CategoriesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoriesLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$CategoriesLoadingImpl>
    implements _$$CategoriesLoadingImplCopyWith<$Res> {
  __$$CategoriesLoadingImplCopyWithImpl(_$CategoriesLoadingImpl _value,
      $Res Function(_$CategoriesLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoriesLoadingImpl implements CategoriesLoading {
  const _$CategoriesLoadingImpl();

  @override
  String toString() {
    return 'HomeState.categoriesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoriesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String> categoryDataList) categoriesSuccess,
    required TResult Function(String errorMessage) categoriesError,
  }) {
    return categoriesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String> categoryDataList)? categoriesSuccess,
    TResult? Function(String errorMessage)? categoriesError,
  }) {
    return categoriesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String> categoryDataList)? categoriesSuccess,
    TResult Function(String errorMessage)? categoriesError,
    required TResult orElse(),
  }) {
    if (categoriesLoading != null) {
      return categoriesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(CategoriesError value) categoriesError,
  }) {
    return categoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
  }) {
    return categoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    required TResult orElse(),
  }) {
    if (categoriesLoading != null) {
      return categoriesLoading(this);
    }
    return orElse();
  }
}

abstract class CategoriesLoading implements HomeState {
  const factory CategoriesLoading() = _$CategoriesLoadingImpl;
}

/// @nodoc
abstract class _$$CategoriesSuccessImplCopyWith<$Res> {
  factory _$$CategoriesSuccessImplCopyWith(_$CategoriesSuccessImpl value,
          $Res Function(_$CategoriesSuccessImpl) then) =
      __$$CategoriesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> categoryDataList});
}

/// @nodoc
class __$$CategoriesSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$CategoriesSuccessImpl>
    implements _$$CategoriesSuccessImplCopyWith<$Res> {
  __$$CategoriesSuccessImplCopyWithImpl(_$CategoriesSuccessImpl _value,
      $Res Function(_$CategoriesSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryDataList = null,
  }) {
    return _then(_$CategoriesSuccessImpl(
      null == categoryDataList
          ? _value._categoryDataList
          : categoryDataList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CategoriesSuccessImpl implements CategoriesSuccess {
  const _$CategoriesSuccessImpl(final List<String> categoryDataList)
      : _categoryDataList = categoryDataList;

  final List<String> _categoryDataList;
  @override
  List<String> get categoryDataList {
    if (_categoryDataList is EqualUnmodifiableListView)
      return _categoryDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryDataList);
  }

  @override
  String toString() {
    return 'HomeState.categoriesSuccess(categoryDataList: $categoryDataList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryDataList, _categoryDataList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoryDataList));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesSuccessImplCopyWith<_$CategoriesSuccessImpl> get copyWith =>
      __$$CategoriesSuccessImplCopyWithImpl<_$CategoriesSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String> categoryDataList) categoriesSuccess,
    required TResult Function(String errorMessage) categoriesError,
  }) {
    return categoriesSuccess(categoryDataList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String> categoryDataList)? categoriesSuccess,
    TResult? Function(String errorMessage)? categoriesError,
  }) {
    return categoriesSuccess?.call(categoryDataList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String> categoryDataList)? categoriesSuccess,
    TResult Function(String errorMessage)? categoriesError,
    required TResult orElse(),
  }) {
    if (categoriesSuccess != null) {
      return categoriesSuccess(categoryDataList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(CategoriesError value) categoriesError,
  }) {
    return categoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
  }) {
    return categoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    required TResult orElse(),
  }) {
    if (categoriesSuccess != null) {
      return categoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class CategoriesSuccess implements HomeState {
  const factory CategoriesSuccess(final List<String> categoryDataList) =
      _$CategoriesSuccessImpl;

  List<String> get categoryDataList;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesSuccessImplCopyWith<_$CategoriesSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesErrorImplCopyWith<$Res> {
  factory _$$CategoriesErrorImplCopyWith(_$CategoriesErrorImpl value,
          $Res Function(_$CategoriesErrorImpl) then) =
      __$$CategoriesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$CategoriesErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$CategoriesErrorImpl>
    implements _$$CategoriesErrorImplCopyWith<$Res> {
  __$$CategoriesErrorImplCopyWithImpl(
      _$CategoriesErrorImpl _value, $Res Function(_$CategoriesErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$CategoriesErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoriesErrorImpl implements CategoriesError {
  const _$CategoriesErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'HomeState.categoriesError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesErrorImplCopyWith<_$CategoriesErrorImpl> get copyWith =>
      __$$CategoriesErrorImplCopyWithImpl<_$CategoriesErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String> categoryDataList) categoriesSuccess,
    required TResult Function(String errorMessage) categoriesError,
  }) {
    return categoriesError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String> categoryDataList)? categoriesSuccess,
    TResult? Function(String errorMessage)? categoriesError,
  }) {
    return categoriesError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String> categoryDataList)? categoriesSuccess,
    TResult Function(String errorMessage)? categoriesError,
    required TResult orElse(),
  }) {
    if (categoriesError != null) {
      return categoriesError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(CategoriesError value) categoriesError,
  }) {
    return categoriesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
  }) {
    return categoriesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    required TResult orElse(),
  }) {
    if (categoriesError != null) {
      return categoriesError(this);
    }
    return orElse();
  }
}

abstract class CategoriesError implements HomeState {
  const factory CategoriesError(final String errorMessage) =
      _$CategoriesErrorImpl;

  String get errorMessage;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesErrorImplCopyWith<_$CategoriesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
