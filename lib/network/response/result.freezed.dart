// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T result) data,
    required TResult Function(Object error, StackTrace? stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T result)? data,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T result)? data,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess<T> value) data,
    required TResult Function(_ResultError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultSuccess<T> value)? data,
    TResult? Function(_ResultError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? data,
    TResult Function(_ResultError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res, Result<T>>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res, $Val extends Result<T>>
    implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResultSuccessImplCopyWith<T, $Res> {
  factory _$$ResultSuccessImplCopyWith(_$ResultSuccessImpl<T> value,
          $Res Function(_$ResultSuccessImpl<T>) then) =
      __$$ResultSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T result});
}

/// @nodoc
class __$$ResultSuccessImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultSuccessImpl<T>>
    implements _$$ResultSuccessImplCopyWith<T, $Res> {
  __$$ResultSuccessImplCopyWithImpl(_$ResultSuccessImpl<T> _value,
      $Res Function(_$ResultSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$ResultSuccessImpl<T>(
      freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ResultSuccessImpl<T> implements _ResultSuccess<T> {
  const _$ResultSuccessImpl(this.result);

  @override
  final T result;

  @override
  String toString() {
    return 'Result<$T>.data(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultSuccessImplCopyWith<T, _$ResultSuccessImpl<T>> get copyWith =>
      __$$ResultSuccessImplCopyWithImpl<T, _$ResultSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T result) data,
    required TResult Function(Object error, StackTrace? stackTrace) error,
  }) {
    return data(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T result)? data,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
  }) {
    return data?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T result)? data,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess<T> value) data,
    required TResult Function(_ResultError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultSuccess<T> value)? data,
    TResult? Function(_ResultError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? data,
    TResult Function(_ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _ResultSuccess<T> implements Result<T> {
  const factory _ResultSuccess(final T result) = _$ResultSuccessImpl<T>;

  T get result;
  @JsonKey(ignore: true)
  _$$ResultSuccessImplCopyWith<T, _$ResultSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultErrorImplCopyWith<T, $Res> {
  factory _$$ResultErrorImplCopyWith(_$ResultErrorImpl<T> value,
          $Res Function(_$ResultErrorImpl<T>) then) =
      __$$ResultErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Object error, StackTrace? stackTrace});
}

/// @nodoc
class __$$ResultErrorImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultErrorImpl<T>>
    implements _$$ResultErrorImplCopyWith<T, $Res> {
  __$$ResultErrorImplCopyWithImpl(
      _$ResultErrorImpl<T> _value, $Res Function(_$ResultErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ResultErrorImpl<T>(
      null == error ? _value.error : error,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ResultErrorImpl<T> implements _ResultError<T> {
  const _$ResultErrorImpl(this.error, [this.stackTrace]);

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'Result<$T>.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultErrorImplCopyWith<T, _$ResultErrorImpl<T>> get copyWith =>
      __$$ResultErrorImplCopyWithImpl<T, _$ResultErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T result) data,
    required TResult Function(Object error, StackTrace? stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T result)? data,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T result)? data,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess<T> value) data,
    required TResult Function(_ResultError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultSuccess<T> value)? data,
    TResult? Function(_ResultError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? data,
    TResult Function(_ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ResultError<T> implements Result<T> {
  const factory _ResultError(final Object error,
      [final StackTrace? stackTrace]) = _$ResultErrorImpl<T>;

  Object get error;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$$ResultErrorImplCopyWith<T, _$ResultErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
