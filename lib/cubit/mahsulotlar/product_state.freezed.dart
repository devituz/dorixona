// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInitial value) initial,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductLoaded value) loaded,
    required TResult Function(ProductError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitial value)? initial,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductLoaded value)? loaded,
    TResult? Function(ProductError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitial value)? initial,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductLoaded value)? loaded,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductInitialImplCopyWith<$Res> {
  factory _$$ProductInitialImplCopyWith(_$ProductInitialImpl value,
          $Res Function(_$ProductInitialImpl) then) =
      __$$ProductInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductInitialImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductInitialImpl>
    implements _$$ProductInitialImplCopyWith<$Res> {
  __$$ProductInitialImplCopyWithImpl(
      _$ProductInitialImpl _value, $Res Function(_$ProductInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductInitialImpl implements ProductInitial {
  const _$ProductInitialImpl();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(ProductInitial value) initial,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductLoaded value) loaded,
    required TResult Function(ProductError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitial value)? initial,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductLoaded value)? loaded,
    TResult? Function(ProductError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitial value)? initial,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductLoaded value)? loaded,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProductInitial implements ProductState {
  const factory ProductInitial() = _$ProductInitialImpl;
}

/// @nodoc
abstract class _$$ProductLoadingImplCopyWith<$Res> {
  factory _$$ProductLoadingImplCopyWith(_$ProductLoadingImpl value,
          $Res Function(_$ProductLoadingImpl) then) =
      __$$ProductLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductLoadingImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductLoadingImpl>
    implements _$$ProductLoadingImplCopyWith<$Res> {
  __$$ProductLoadingImplCopyWithImpl(
      _$ProductLoadingImpl _value, $Res Function(_$ProductLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductLoadingImpl implements ProductLoading {
  const _$ProductLoadingImpl();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInitial value) initial,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductLoaded value) loaded,
    required TResult Function(ProductError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitial value)? initial,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductLoaded value)? loaded,
    TResult? Function(ProductError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitial value)? initial,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductLoaded value)? loaded,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductLoading implements ProductState {
  const factory ProductLoading() = _$ProductLoadingImpl;
}

/// @nodoc
abstract class _$$ProductLoadedImplCopyWith<$Res> {
  factory _$$ProductLoadedImplCopyWith(
          _$ProductLoadedImpl value, $Res Function(_$ProductLoadedImpl) then) =
      __$$ProductLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$ProductLoadedImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductLoadedImpl>
    implements _$$ProductLoadedImplCopyWith<$Res> {
  __$$ProductLoadedImplCopyWithImpl(
      _$ProductLoadedImpl _value, $Res Function(_$ProductLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$ProductLoadedImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ProductLoadedImpl implements ProductLoaded {
  const _$ProductLoadedImpl(final List<Product> products)
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductState.loaded(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductLoadedImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductLoadedImplCopyWith<_$ProductLoadedImpl> get copyWith =>
      __$$ProductLoadedImplCopyWithImpl<_$ProductLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInitial value) initial,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductLoaded value) loaded,
    required TResult Function(ProductError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitial value)? initial,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductLoaded value)? loaded,
    TResult? Function(ProductError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitial value)? initial,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductLoaded value)? loaded,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProductLoaded implements ProductState {
  const factory ProductLoaded(final List<Product> products) =
      _$ProductLoadedImpl;

  List<Product> get products;
  @JsonKey(ignore: true)
  _$$ProductLoadedImplCopyWith<_$ProductLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductErrorImplCopyWith<$Res> {
  factory _$$ProductErrorImplCopyWith(
          _$ProductErrorImpl value, $Res Function(_$ProductErrorImpl) then) =
      __$$ProductErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProductErrorImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductErrorImpl>
    implements _$$ProductErrorImplCopyWith<$Res> {
  __$$ProductErrorImplCopyWithImpl(
      _$ProductErrorImpl _value, $Res Function(_$ProductErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ProductErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductErrorImpl implements ProductError {
  const _$ProductErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProductState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductErrorImplCopyWith<_$ProductErrorImpl> get copyWith =>
      __$$ProductErrorImplCopyWithImpl<_$ProductErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInitial value) initial,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductLoaded value) loaded,
    required TResult Function(ProductError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitial value)? initial,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductLoaded value)? loaded,
    TResult? Function(ProductError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitial value)? initial,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductLoaded value)? loaded,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductError implements ProductState {
  const factory ProductError(final String message) = _$ProductErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ProductErrorImplCopyWith<_$ProductErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
