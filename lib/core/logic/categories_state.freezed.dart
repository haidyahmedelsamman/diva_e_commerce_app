// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String> categoryDataList) categoriesSuccess,
    required TResult Function(String errorMessage) categoriesError,
    required TResult Function(int indexOfCategory) onCategoryClick,
    required TResult Function() categoryProductsLoading,
    required TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)
        categoryProductsSuccess,
    required TResult Function(String errorMessage) categoryProductsError,
    required TResult Function(int indexCategoryTab) onCategoriesTabClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String> categoryDataList)? categoriesSuccess,
    TResult? Function(String errorMessage)? categoriesError,
    TResult? Function(int indexOfCategory)? onCategoryClick,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult? Function(String errorMessage)? categoryProductsError,
    TResult? Function(int indexCategoryTab)? onCategoriesTabClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String> categoryDataList)? categoriesSuccess,
    TResult Function(String errorMessage)? categoriesError,
    TResult Function(int indexOfCategory)? onCategoryClick,
    TResult Function()? categoryProductsLoading,
    TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult Function(String errorMessage)? categoryProductsError,
    TResult Function(int indexCategoryTab)? onCategoriesTabClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(OnCategoryClick value) onCategoryClick,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
    required TResult Function(OnCategoriesTabClick value) onCategoriesTabClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(OnCategoryClick value)? onCategoryClick,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
    TResult? Function(OnCategoriesTabClick value)? onCategoriesTabClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(OnCategoryClick value)? onCategoryClick,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    TResult Function(OnCategoriesTabClick value)? onCategoriesTabClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesState
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
    extends _$CategoriesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CategoriesState.initial()';
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
    required TResult Function(int indexOfCategory) onCategoryClick,
    required TResult Function() categoryProductsLoading,
    required TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)
        categoryProductsSuccess,
    required TResult Function(String errorMessage) categoryProductsError,
    required TResult Function(int indexCategoryTab) onCategoriesTabClick,
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
    TResult? Function(int indexOfCategory)? onCategoryClick,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult? Function(String errorMessage)? categoryProductsError,
    TResult? Function(int indexCategoryTab)? onCategoriesTabClick,
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
    TResult Function(int indexOfCategory)? onCategoryClick,
    TResult Function()? categoryProductsLoading,
    TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult Function(String errorMessage)? categoryProductsError,
    TResult Function(int indexCategoryTab)? onCategoriesTabClick,
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
    required TResult Function(OnCategoryClick value) onCategoryClick,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
    required TResult Function(OnCategoriesTabClick value) onCategoriesTabClick,
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
    TResult? Function(OnCategoryClick value)? onCategoryClick,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
    TResult? Function(OnCategoriesTabClick value)? onCategoriesTabClick,
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
    TResult Function(OnCategoryClick value)? onCategoryClick,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    TResult Function(OnCategoriesTabClick value)? onCategoriesTabClick,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CategoriesState {
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
    extends _$CategoriesStateCopyWithImpl<$Res, _$CategoriesLoadingImpl>
    implements _$$CategoriesLoadingImplCopyWith<$Res> {
  __$$CategoriesLoadingImplCopyWithImpl(_$CategoriesLoadingImpl _value,
      $Res Function(_$CategoriesLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoriesLoadingImpl implements CategoriesLoading {
  const _$CategoriesLoadingImpl();

  @override
  String toString() {
    return 'CategoriesState.categoriesLoading()';
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
    required TResult Function(int indexOfCategory) onCategoryClick,
    required TResult Function() categoryProductsLoading,
    required TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)
        categoryProductsSuccess,
    required TResult Function(String errorMessage) categoryProductsError,
    required TResult Function(int indexCategoryTab) onCategoriesTabClick,
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
    TResult? Function(int indexOfCategory)? onCategoryClick,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult? Function(String errorMessage)? categoryProductsError,
    TResult? Function(int indexCategoryTab)? onCategoriesTabClick,
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
    TResult Function(int indexOfCategory)? onCategoryClick,
    TResult Function()? categoryProductsLoading,
    TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult Function(String errorMessage)? categoryProductsError,
    TResult Function(int indexCategoryTab)? onCategoriesTabClick,
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
    required TResult Function(OnCategoryClick value) onCategoryClick,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
    required TResult Function(OnCategoriesTabClick value) onCategoriesTabClick,
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
    TResult? Function(OnCategoryClick value)? onCategoryClick,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
    TResult? Function(OnCategoriesTabClick value)? onCategoriesTabClick,
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
    TResult Function(OnCategoryClick value)? onCategoryClick,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    TResult Function(OnCategoriesTabClick value)? onCategoriesTabClick,
    required TResult orElse(),
  }) {
    if (categoriesLoading != null) {
      return categoriesLoading(this);
    }
    return orElse();
  }
}

abstract class CategoriesLoading implements CategoriesState {
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
    extends _$CategoriesStateCopyWithImpl<$Res, _$CategoriesSuccessImpl>
    implements _$$CategoriesSuccessImplCopyWith<$Res> {
  __$$CategoriesSuccessImplCopyWithImpl(_$CategoriesSuccessImpl _value,
      $Res Function(_$CategoriesSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
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
    return 'CategoriesState.categoriesSuccess(categoryDataList: $categoryDataList)';
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

  /// Create a copy of CategoriesState
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
    required TResult Function(int indexOfCategory) onCategoryClick,
    required TResult Function() categoryProductsLoading,
    required TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)
        categoryProductsSuccess,
    required TResult Function(String errorMessage) categoryProductsError,
    required TResult Function(int indexCategoryTab) onCategoriesTabClick,
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
    TResult? Function(int indexOfCategory)? onCategoryClick,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult? Function(String errorMessage)? categoryProductsError,
    TResult? Function(int indexCategoryTab)? onCategoriesTabClick,
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
    TResult Function(int indexOfCategory)? onCategoryClick,
    TResult Function()? categoryProductsLoading,
    TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult Function(String errorMessage)? categoryProductsError,
    TResult Function(int indexCategoryTab)? onCategoriesTabClick,
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
    required TResult Function(OnCategoryClick value) onCategoryClick,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
    required TResult Function(OnCategoriesTabClick value) onCategoriesTabClick,
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
    TResult? Function(OnCategoryClick value)? onCategoryClick,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
    TResult? Function(OnCategoriesTabClick value)? onCategoriesTabClick,
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
    TResult Function(OnCategoryClick value)? onCategoryClick,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    TResult Function(OnCategoriesTabClick value)? onCategoriesTabClick,
    required TResult orElse(),
  }) {
    if (categoriesSuccess != null) {
      return categoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class CategoriesSuccess implements CategoriesState {
  const factory CategoriesSuccess(final List<String> categoryDataList) =
      _$CategoriesSuccessImpl;

  List<String> get categoryDataList;

  /// Create a copy of CategoriesState
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
    extends _$CategoriesStateCopyWithImpl<$Res, _$CategoriesErrorImpl>
    implements _$$CategoriesErrorImplCopyWith<$Res> {
  __$$CategoriesErrorImplCopyWithImpl(
      _$CategoriesErrorImpl _value, $Res Function(_$CategoriesErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
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
    return 'CategoriesState.categoriesError(errorMessage: $errorMessage)';
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

  /// Create a copy of CategoriesState
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
    required TResult Function(int indexOfCategory) onCategoryClick,
    required TResult Function() categoryProductsLoading,
    required TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)
        categoryProductsSuccess,
    required TResult Function(String errorMessage) categoryProductsError,
    required TResult Function(int indexCategoryTab) onCategoriesTabClick,
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
    TResult? Function(int indexOfCategory)? onCategoryClick,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult? Function(String errorMessage)? categoryProductsError,
    TResult? Function(int indexCategoryTab)? onCategoriesTabClick,
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
    TResult Function(int indexOfCategory)? onCategoryClick,
    TResult Function()? categoryProductsLoading,
    TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult Function(String errorMessage)? categoryProductsError,
    TResult Function(int indexCategoryTab)? onCategoriesTabClick,
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
    required TResult Function(OnCategoryClick value) onCategoryClick,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
    required TResult Function(OnCategoriesTabClick value) onCategoriesTabClick,
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
    TResult? Function(OnCategoryClick value)? onCategoryClick,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
    TResult? Function(OnCategoriesTabClick value)? onCategoriesTabClick,
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
    TResult Function(OnCategoryClick value)? onCategoryClick,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    TResult Function(OnCategoriesTabClick value)? onCategoriesTabClick,
    required TResult orElse(),
  }) {
    if (categoriesError != null) {
      return categoriesError(this);
    }
    return orElse();
  }
}

abstract class CategoriesError implements CategoriesState {
  const factory CategoriesError(final String errorMessage) =
      _$CategoriesErrorImpl;

  String get errorMessage;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesErrorImplCopyWith<_$CategoriesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnCategoryClickImplCopyWith<$Res> {
  factory _$$OnCategoryClickImplCopyWith(_$OnCategoryClickImpl value,
          $Res Function(_$OnCategoryClickImpl) then) =
      __$$OnCategoryClickImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int indexOfCategory});
}

/// @nodoc
class __$$OnCategoryClickImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$OnCategoryClickImpl>
    implements _$$OnCategoryClickImplCopyWith<$Res> {
  __$$OnCategoryClickImplCopyWithImpl(
      _$OnCategoryClickImpl _value, $Res Function(_$OnCategoryClickImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexOfCategory = null,
  }) {
    return _then(_$OnCategoryClickImpl(
      null == indexOfCategory
          ? _value.indexOfCategory
          : indexOfCategory // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnCategoryClickImpl implements OnCategoryClick {
  const _$OnCategoryClickImpl(this.indexOfCategory);

  @override
  final int indexOfCategory;

  @override
  String toString() {
    return 'CategoriesState.onCategoryClick(indexOfCategory: $indexOfCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnCategoryClickImpl &&
            (identical(other.indexOfCategory, indexOfCategory) ||
                other.indexOfCategory == indexOfCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, indexOfCategory);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnCategoryClickImplCopyWith<_$OnCategoryClickImpl> get copyWith =>
      __$$OnCategoryClickImplCopyWithImpl<_$OnCategoryClickImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String> categoryDataList) categoriesSuccess,
    required TResult Function(String errorMessage) categoriesError,
    required TResult Function(int indexOfCategory) onCategoryClick,
    required TResult Function() categoryProductsLoading,
    required TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)
        categoryProductsSuccess,
    required TResult Function(String errorMessage) categoryProductsError,
    required TResult Function(int indexCategoryTab) onCategoriesTabClick,
  }) {
    return onCategoryClick(indexOfCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String> categoryDataList)? categoriesSuccess,
    TResult? Function(String errorMessage)? categoriesError,
    TResult? Function(int indexOfCategory)? onCategoryClick,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult? Function(String errorMessage)? categoryProductsError,
    TResult? Function(int indexCategoryTab)? onCategoriesTabClick,
  }) {
    return onCategoryClick?.call(indexOfCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String> categoryDataList)? categoriesSuccess,
    TResult Function(String errorMessage)? categoriesError,
    TResult Function(int indexOfCategory)? onCategoryClick,
    TResult Function()? categoryProductsLoading,
    TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult Function(String errorMessage)? categoryProductsError,
    TResult Function(int indexCategoryTab)? onCategoriesTabClick,
    required TResult orElse(),
  }) {
    if (onCategoryClick != null) {
      return onCategoryClick(indexOfCategory);
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
    required TResult Function(OnCategoryClick value) onCategoryClick,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
    required TResult Function(OnCategoriesTabClick value) onCategoriesTabClick,
  }) {
    return onCategoryClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(OnCategoryClick value)? onCategoryClick,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
    TResult? Function(OnCategoriesTabClick value)? onCategoriesTabClick,
  }) {
    return onCategoryClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(OnCategoryClick value)? onCategoryClick,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    TResult Function(OnCategoriesTabClick value)? onCategoriesTabClick,
    required TResult orElse(),
  }) {
    if (onCategoryClick != null) {
      return onCategoryClick(this);
    }
    return orElse();
  }
}

abstract class OnCategoryClick implements CategoriesState {
  const factory OnCategoryClick(final int indexOfCategory) =
      _$OnCategoryClickImpl;

  int get indexOfCategory;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnCategoryClickImplCopyWith<_$OnCategoryClickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryProductsLoadingImplCopyWith<$Res> {
  factory _$$CategoryProductsLoadingImplCopyWith(
          _$CategoryProductsLoadingImpl value,
          $Res Function(_$CategoryProductsLoadingImpl) then) =
      __$$CategoryProductsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryProductsLoadingImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$CategoryProductsLoadingImpl>
    implements _$$CategoryProductsLoadingImplCopyWith<$Res> {
  __$$CategoryProductsLoadingImplCopyWithImpl(
      _$CategoryProductsLoadingImpl _value,
      $Res Function(_$CategoryProductsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoryProductsLoadingImpl implements CategoryProductsLoading {
  const _$CategoryProductsLoadingImpl();

  @override
  String toString() {
    return 'CategoriesState.categoryProductsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductsLoadingImpl);
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
    required TResult Function(int indexOfCategory) onCategoryClick,
    required TResult Function() categoryProductsLoading,
    required TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)
        categoryProductsSuccess,
    required TResult Function(String errorMessage) categoryProductsError,
    required TResult Function(int indexCategoryTab) onCategoriesTabClick,
  }) {
    return categoryProductsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String> categoryDataList)? categoriesSuccess,
    TResult? Function(String errorMessage)? categoriesError,
    TResult? Function(int indexOfCategory)? onCategoryClick,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult? Function(String errorMessage)? categoryProductsError,
    TResult? Function(int indexCategoryTab)? onCategoriesTabClick,
  }) {
    return categoryProductsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String> categoryDataList)? categoriesSuccess,
    TResult Function(String errorMessage)? categoriesError,
    TResult Function(int indexOfCategory)? onCategoryClick,
    TResult Function()? categoryProductsLoading,
    TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult Function(String errorMessage)? categoryProductsError,
    TResult Function(int indexCategoryTab)? onCategoriesTabClick,
    required TResult orElse(),
  }) {
    if (categoryProductsLoading != null) {
      return categoryProductsLoading();
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
    required TResult Function(OnCategoryClick value) onCategoryClick,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
    required TResult Function(OnCategoriesTabClick value) onCategoriesTabClick,
  }) {
    return categoryProductsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(OnCategoryClick value)? onCategoryClick,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
    TResult? Function(OnCategoriesTabClick value)? onCategoriesTabClick,
  }) {
    return categoryProductsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(OnCategoryClick value)? onCategoryClick,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    TResult Function(OnCategoriesTabClick value)? onCategoriesTabClick,
    required TResult orElse(),
  }) {
    if (categoryProductsLoading != null) {
      return categoryProductsLoading(this);
    }
    return orElse();
  }
}

abstract class CategoryProductsLoading implements CategoriesState {
  const factory CategoryProductsLoading() = _$CategoryProductsLoadingImpl;
}

/// @nodoc
abstract class _$$CategoryProductsSuccessImplCopyWith<$Res> {
  factory _$$CategoryProductsSuccessImplCopyWith(
          _$CategoryProductsSuccessImpl value,
          $Res Function(_$CategoryProductsSuccessImpl) then) =
      __$$CategoryProductsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<String> categoryDataList, List<ProductModel> productsDataList});
}

/// @nodoc
class __$$CategoryProductsSuccessImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$CategoryProductsSuccessImpl>
    implements _$$CategoryProductsSuccessImplCopyWith<$Res> {
  __$$CategoryProductsSuccessImplCopyWithImpl(
      _$CategoryProductsSuccessImpl _value,
      $Res Function(_$CategoryProductsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryDataList = null,
    Object? productsDataList = null,
  }) {
    return _then(_$CategoryProductsSuccessImpl(
      null == categoryDataList
          ? _value._categoryDataList
          : categoryDataList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == productsDataList
          ? _value._productsDataList
          : productsDataList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$CategoryProductsSuccessImpl implements CategoryProductsSuccess {
  const _$CategoryProductsSuccessImpl(final List<String> categoryDataList,
      final List<ProductModel> productsDataList)
      : _categoryDataList = categoryDataList,
        _productsDataList = productsDataList;

  final List<String> _categoryDataList;
  @override
  List<String> get categoryDataList {
    if (_categoryDataList is EqualUnmodifiableListView)
      return _categoryDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryDataList);
  }

  final List<ProductModel> _productsDataList;
  @override
  List<ProductModel> get productsDataList {
    if (_productsDataList is EqualUnmodifiableListView)
      return _productsDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsDataList);
  }

  @override
  String toString() {
    return 'CategoriesState.categoryProductsSuccess(categoryDataList: $categoryDataList, productsDataList: $productsDataList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductsSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryDataList, _categoryDataList) &&
            const DeepCollectionEquality()
                .equals(other._productsDataList, _productsDataList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoryDataList),
      const DeepCollectionEquality().hash(_productsDataList));

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProductsSuccessImplCopyWith<_$CategoryProductsSuccessImpl>
      get copyWith => __$$CategoryProductsSuccessImplCopyWithImpl<
          _$CategoryProductsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String> categoryDataList) categoriesSuccess,
    required TResult Function(String errorMessage) categoriesError,
    required TResult Function(int indexOfCategory) onCategoryClick,
    required TResult Function() categoryProductsLoading,
    required TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)
        categoryProductsSuccess,
    required TResult Function(String errorMessage) categoryProductsError,
    required TResult Function(int indexCategoryTab) onCategoriesTabClick,
  }) {
    return categoryProductsSuccess(categoryDataList, productsDataList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String> categoryDataList)? categoriesSuccess,
    TResult? Function(String errorMessage)? categoriesError,
    TResult? Function(int indexOfCategory)? onCategoryClick,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult? Function(String errorMessage)? categoryProductsError,
    TResult? Function(int indexCategoryTab)? onCategoriesTabClick,
  }) {
    return categoryProductsSuccess?.call(categoryDataList, productsDataList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String> categoryDataList)? categoriesSuccess,
    TResult Function(String errorMessage)? categoriesError,
    TResult Function(int indexOfCategory)? onCategoryClick,
    TResult Function()? categoryProductsLoading,
    TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult Function(String errorMessage)? categoryProductsError,
    TResult Function(int indexCategoryTab)? onCategoriesTabClick,
    required TResult orElse(),
  }) {
    if (categoryProductsSuccess != null) {
      return categoryProductsSuccess(categoryDataList, productsDataList);
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
    required TResult Function(OnCategoryClick value) onCategoryClick,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
    required TResult Function(OnCategoriesTabClick value) onCategoriesTabClick,
  }) {
    return categoryProductsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(OnCategoryClick value)? onCategoryClick,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
    TResult? Function(OnCategoriesTabClick value)? onCategoriesTabClick,
  }) {
    return categoryProductsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(OnCategoryClick value)? onCategoryClick,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    TResult Function(OnCategoriesTabClick value)? onCategoriesTabClick,
    required TResult orElse(),
  }) {
    if (categoryProductsSuccess != null) {
      return categoryProductsSuccess(this);
    }
    return orElse();
  }
}

abstract class CategoryProductsSuccess implements CategoriesState {
  const factory CategoryProductsSuccess(final List<String> categoryDataList,
          final List<ProductModel> productsDataList) =
      _$CategoryProductsSuccessImpl;

  List<String> get categoryDataList;
  List<ProductModel> get productsDataList;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryProductsSuccessImplCopyWith<_$CategoryProductsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryProductsErrorImplCopyWith<$Res> {
  factory _$$CategoryProductsErrorImplCopyWith(
          _$CategoryProductsErrorImpl value,
          $Res Function(_$CategoryProductsErrorImpl) then) =
      __$$CategoryProductsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$CategoryProductsErrorImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$CategoryProductsErrorImpl>
    implements _$$CategoryProductsErrorImplCopyWith<$Res> {
  __$$CategoryProductsErrorImplCopyWithImpl(_$CategoryProductsErrorImpl _value,
      $Res Function(_$CategoryProductsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$CategoryProductsErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoryProductsErrorImpl implements CategoryProductsError {
  const _$CategoryProductsErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CategoriesState.categoryProductsError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductsErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProductsErrorImplCopyWith<_$CategoryProductsErrorImpl>
      get copyWith => __$$CategoryProductsErrorImplCopyWithImpl<
          _$CategoryProductsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String> categoryDataList) categoriesSuccess,
    required TResult Function(String errorMessage) categoriesError,
    required TResult Function(int indexOfCategory) onCategoryClick,
    required TResult Function() categoryProductsLoading,
    required TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)
        categoryProductsSuccess,
    required TResult Function(String errorMessage) categoryProductsError,
    required TResult Function(int indexCategoryTab) onCategoriesTabClick,
  }) {
    return categoryProductsError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String> categoryDataList)? categoriesSuccess,
    TResult? Function(String errorMessage)? categoriesError,
    TResult? Function(int indexOfCategory)? onCategoryClick,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult? Function(String errorMessage)? categoryProductsError,
    TResult? Function(int indexCategoryTab)? onCategoriesTabClick,
  }) {
    return categoryProductsError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String> categoryDataList)? categoriesSuccess,
    TResult Function(String errorMessage)? categoriesError,
    TResult Function(int indexOfCategory)? onCategoryClick,
    TResult Function()? categoryProductsLoading,
    TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult Function(String errorMessage)? categoryProductsError,
    TResult Function(int indexCategoryTab)? onCategoriesTabClick,
    required TResult orElse(),
  }) {
    if (categoryProductsError != null) {
      return categoryProductsError(errorMessage);
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
    required TResult Function(OnCategoryClick value) onCategoryClick,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
    required TResult Function(OnCategoriesTabClick value) onCategoriesTabClick,
  }) {
    return categoryProductsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(OnCategoryClick value)? onCategoryClick,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
    TResult? Function(OnCategoriesTabClick value)? onCategoriesTabClick,
  }) {
    return categoryProductsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(OnCategoryClick value)? onCategoryClick,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    TResult Function(OnCategoriesTabClick value)? onCategoriesTabClick,
    required TResult orElse(),
  }) {
    if (categoryProductsError != null) {
      return categoryProductsError(this);
    }
    return orElse();
  }
}

abstract class CategoryProductsError implements CategoriesState {
  const factory CategoryProductsError(final String errorMessage) =
      _$CategoryProductsErrorImpl;

  String get errorMessage;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryProductsErrorImplCopyWith<_$CategoryProductsErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnCategoriesTabClickImplCopyWith<$Res> {
  factory _$$OnCategoriesTabClickImplCopyWith(_$OnCategoriesTabClickImpl value,
          $Res Function(_$OnCategoriesTabClickImpl) then) =
      __$$OnCategoriesTabClickImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int indexCategoryTab});
}

/// @nodoc
class __$$OnCategoriesTabClickImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$OnCategoriesTabClickImpl>
    implements _$$OnCategoriesTabClickImplCopyWith<$Res> {
  __$$OnCategoriesTabClickImplCopyWithImpl(_$OnCategoriesTabClickImpl _value,
      $Res Function(_$OnCategoriesTabClickImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexCategoryTab = null,
  }) {
    return _then(_$OnCategoriesTabClickImpl(
      null == indexCategoryTab
          ? _value.indexCategoryTab
          : indexCategoryTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnCategoriesTabClickImpl implements OnCategoriesTabClick {
  const _$OnCategoriesTabClickImpl(this.indexCategoryTab);

  @override
  final int indexCategoryTab;

  @override
  String toString() {
    return 'CategoriesState.onCategoriesTabClick(indexCategoryTab: $indexCategoryTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnCategoriesTabClickImpl &&
            (identical(other.indexCategoryTab, indexCategoryTab) ||
                other.indexCategoryTab == indexCategoryTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, indexCategoryTab);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnCategoriesTabClickImplCopyWith<_$OnCategoriesTabClickImpl>
      get copyWith =>
          __$$OnCategoriesTabClickImplCopyWithImpl<_$OnCategoriesTabClickImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(List<String> categoryDataList) categoriesSuccess,
    required TResult Function(String errorMessage) categoriesError,
    required TResult Function(int indexOfCategory) onCategoryClick,
    required TResult Function() categoryProductsLoading,
    required TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)
        categoryProductsSuccess,
    required TResult Function(String errorMessage) categoryProductsError,
    required TResult Function(int indexCategoryTab) onCategoriesTabClick,
  }) {
    return onCategoriesTabClick(indexCategoryTab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(List<String> categoryDataList)? categoriesSuccess,
    TResult? Function(String errorMessage)? categoriesError,
    TResult? Function(int indexOfCategory)? onCategoryClick,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult? Function(String errorMessage)? categoryProductsError,
    TResult? Function(int indexCategoryTab)? onCategoriesTabClick,
  }) {
    return onCategoriesTabClick?.call(indexCategoryTab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(List<String> categoryDataList)? categoriesSuccess,
    TResult Function(String errorMessage)? categoriesError,
    TResult Function(int indexOfCategory)? onCategoryClick,
    TResult Function()? categoryProductsLoading,
    TResult Function(
            List<String> categoryDataList, List<ProductModel> productsDataList)?
        categoryProductsSuccess,
    TResult Function(String errorMessage)? categoryProductsError,
    TResult Function(int indexCategoryTab)? onCategoriesTabClick,
    required TResult orElse(),
  }) {
    if (onCategoriesTabClick != null) {
      return onCategoriesTabClick(indexCategoryTab);
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
    required TResult Function(OnCategoryClick value) onCategoryClick,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
    required TResult Function(OnCategoriesTabClick value) onCategoriesTabClick,
  }) {
    return onCategoriesTabClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(OnCategoryClick value)? onCategoryClick,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
    TResult? Function(OnCategoriesTabClick value)? onCategoriesTabClick,
  }) {
    return onCategoriesTabClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(OnCategoryClick value)? onCategoryClick,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    TResult Function(OnCategoriesTabClick value)? onCategoriesTabClick,
    required TResult orElse(),
  }) {
    if (onCategoriesTabClick != null) {
      return onCategoriesTabClick(this);
    }
    return orElse();
  }
}

abstract class OnCategoriesTabClick implements CategoriesState {
  const factory OnCategoriesTabClick(final int indexCategoryTab) =
      _$OnCategoriesTabClickImpl;

  int get indexCategoryTab;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnCategoriesTabClickImplCopyWith<_$OnCategoriesTabClickImpl>
      get copyWith => throw _privateConstructorUsedError;
}
