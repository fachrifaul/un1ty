// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetResponse _$GetResponseFromJson(Map<String, dynamic> json) {
  return _GetResponse.fromJson(json);
}

/// @nodoc
mixin _$GetResponse {
  @JsonKey(name: "args")
  Args get args => throw _privateConstructorUsedError;
  @JsonKey(name: "headers")
  Headers get headers => throw _privateConstructorUsedError;
  @JsonKey(name: "origin")
  String get origin => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetResponseCopyWith<GetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetResponseCopyWith<$Res> {
  factory $GetResponseCopyWith(
          GetResponse value, $Res Function(GetResponse) then) =
      _$GetResponseCopyWithImpl<$Res, GetResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "args") Args args,
      @JsonKey(name: "headers") Headers headers,
      @JsonKey(name: "origin") String origin,
      @JsonKey(name: "url") String url});

  $ArgsCopyWith<$Res> get args;
  $HeadersCopyWith<$Res> get headers;
}

/// @nodoc
class _$GetResponseCopyWithImpl<$Res, $Val extends GetResponse>
    implements $GetResponseCopyWith<$Res> {
  _$GetResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
    Object? headers = null,
    Object? origin = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      args: null == args
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as Args,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Headers,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArgsCopyWith<$Res> get args {
    return $ArgsCopyWith<$Res>(_value.args, (value) {
      return _then(_value.copyWith(args: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HeadersCopyWith<$Res> get headers {
    return $HeadersCopyWith<$Res>(_value.headers, (value) {
      return _then(_value.copyWith(headers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetResponseImplCopyWith<$Res>
    implements $GetResponseCopyWith<$Res> {
  factory _$$GetResponseImplCopyWith(
          _$GetResponseImpl value, $Res Function(_$GetResponseImpl) then) =
      __$$GetResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "args") Args args,
      @JsonKey(name: "headers") Headers headers,
      @JsonKey(name: "origin") String origin,
      @JsonKey(name: "url") String url});

  @override
  $ArgsCopyWith<$Res> get args;
  @override
  $HeadersCopyWith<$Res> get headers;
}

/// @nodoc
class __$$GetResponseImplCopyWithImpl<$Res>
    extends _$GetResponseCopyWithImpl<$Res, _$GetResponseImpl>
    implements _$$GetResponseImplCopyWith<$Res> {
  __$$GetResponseImplCopyWithImpl(
      _$GetResponseImpl _value, $Res Function(_$GetResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
    Object? headers = null,
    Object? origin = null,
    Object? url = null,
  }) {
    return _then(_$GetResponseImpl(
      args: null == args
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as Args,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Headers,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetResponseImpl implements _GetResponse {
  const _$GetResponseImpl(
      {@JsonKey(name: "args") required this.args,
      @JsonKey(name: "headers") required this.headers,
      @JsonKey(name: "origin") required this.origin,
      @JsonKey(name: "url") required this.url});

  factory _$GetResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetResponseImplFromJson(json);

  @override
  @JsonKey(name: "args")
  final Args args;
  @override
  @JsonKey(name: "headers")
  final Headers headers;
  @override
  @JsonKey(name: "origin")
  final String origin;
  @override
  @JsonKey(name: "url")
  final String url;

  @override
  String toString() {
    return 'GetResponse(args: $args, headers: $headers, origin: $origin, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetResponseImpl &&
            (identical(other.args, args) || other.args == args) &&
            (identical(other.headers, headers) || other.headers == headers) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, args, headers, origin, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetResponseImplCopyWith<_$GetResponseImpl> get copyWith =>
      __$$GetResponseImplCopyWithImpl<_$GetResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetResponseImplToJson(
      this,
    );
  }
}

abstract class _GetResponse implements GetResponse {
  const factory _GetResponse(
      {@JsonKey(name: "args") required final Args args,
      @JsonKey(name: "headers") required final Headers headers,
      @JsonKey(name: "origin") required final String origin,
      @JsonKey(name: "url") required final String url}) = _$GetResponseImpl;

  factory _GetResponse.fromJson(Map<String, dynamic> json) =
      _$GetResponseImpl.fromJson;

  @override
  @JsonKey(name: "args")
  Args get args;
  @override
  @JsonKey(name: "headers")
  Headers get headers;
  @override
  @JsonKey(name: "origin")
  String get origin;
  @override
  @JsonKey(name: "url")
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$GetResponseImplCopyWith<_$GetResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Args _$ArgsFromJson(Map<String, dynamic> json) {
  return _Args.fromJson(json);
}

/// @nodoc
mixin _$Args {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArgsCopyWith<$Res> {
  factory $ArgsCopyWith(Args value, $Res Function(Args) then) =
      _$ArgsCopyWithImpl<$Res, Args>;
}

/// @nodoc
class _$ArgsCopyWithImpl<$Res, $Val extends Args>
    implements $ArgsCopyWith<$Res> {
  _$ArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ArgsImplCopyWith<$Res> {
  factory _$$ArgsImplCopyWith(
          _$ArgsImpl value, $Res Function(_$ArgsImpl) then) =
      __$$ArgsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArgsImplCopyWithImpl<$Res>
    extends _$ArgsCopyWithImpl<$Res, _$ArgsImpl>
    implements _$$ArgsImplCopyWith<$Res> {
  __$$ArgsImplCopyWithImpl(_$ArgsImpl _value, $Res Function(_$ArgsImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ArgsImpl implements _Args {
  const _$ArgsImpl();

  factory _$ArgsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArgsImplFromJson(json);

  @override
  String toString() {
    return 'Args()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ArgsImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ArgsImplToJson(
      this,
    );
  }
}

abstract class _Args implements Args {
  const factory _Args() = _$ArgsImpl;

  factory _Args.fromJson(Map<String, dynamic> json) = _$ArgsImpl.fromJson;
}

Headers _$HeadersFromJson(Map<String, dynamic> json) {
  return _Headers.fromJson(json);
}

/// @nodoc
mixin _$Headers {
  @JsonKey(name: "Accept-Encoding")
  String get acceptEncoding => throw _privateConstructorUsedError;
  @JsonKey(name: "Content-Type")
  String get contentType => throw _privateConstructorUsedError;
  @JsonKey(name: "Host")
  String get host => throw _privateConstructorUsedError;
  @JsonKey(name: "User-Agent")
  String get userAgent => throw _privateConstructorUsedError;
  @JsonKey(name: "X-Amzn-Trace-Id")
  String get xAmznTraceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeadersCopyWith<Headers> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeadersCopyWith<$Res> {
  factory $HeadersCopyWith(Headers value, $Res Function(Headers) then) =
      _$HeadersCopyWithImpl<$Res, Headers>;
  @useResult
  $Res call(
      {@JsonKey(name: "Accept-Encoding") String acceptEncoding,
      @JsonKey(name: "Content-Type") String contentType,
      @JsonKey(name: "Host") String host,
      @JsonKey(name: "User-Agent") String userAgent,
      @JsonKey(name: "X-Amzn-Trace-Id") String xAmznTraceId});
}

/// @nodoc
class _$HeadersCopyWithImpl<$Res, $Val extends Headers>
    implements $HeadersCopyWith<$Res> {
  _$HeadersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptEncoding = null,
    Object? contentType = null,
    Object? host = null,
    Object? userAgent = null,
    Object? xAmznTraceId = null,
  }) {
    return _then(_value.copyWith(
      acceptEncoding: null == acceptEncoding
          ? _value.acceptEncoding
          : acceptEncoding // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: null == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
      xAmznTraceId: null == xAmznTraceId
          ? _value.xAmznTraceId
          : xAmznTraceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeadersImplCopyWith<$Res> implements $HeadersCopyWith<$Res> {
  factory _$$HeadersImplCopyWith(
          _$HeadersImpl value, $Res Function(_$HeadersImpl) then) =
      __$$HeadersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Accept-Encoding") String acceptEncoding,
      @JsonKey(name: "Content-Type") String contentType,
      @JsonKey(name: "Host") String host,
      @JsonKey(name: "User-Agent") String userAgent,
      @JsonKey(name: "X-Amzn-Trace-Id") String xAmznTraceId});
}

/// @nodoc
class __$$HeadersImplCopyWithImpl<$Res>
    extends _$HeadersCopyWithImpl<$Res, _$HeadersImpl>
    implements _$$HeadersImplCopyWith<$Res> {
  __$$HeadersImplCopyWithImpl(
      _$HeadersImpl _value, $Res Function(_$HeadersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptEncoding = null,
    Object? contentType = null,
    Object? host = null,
    Object? userAgent = null,
    Object? xAmznTraceId = null,
  }) {
    return _then(_$HeadersImpl(
      acceptEncoding: null == acceptEncoding
          ? _value.acceptEncoding
          : acceptEncoding // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: null == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
      xAmznTraceId: null == xAmznTraceId
          ? _value.xAmznTraceId
          : xAmznTraceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeadersImpl implements _Headers {
  const _$HeadersImpl(
      {@JsonKey(name: "Accept-Encoding") required this.acceptEncoding,
      @JsonKey(name: "Content-Type") required this.contentType,
      @JsonKey(name: "Host") required this.host,
      @JsonKey(name: "User-Agent") required this.userAgent,
      @JsonKey(name: "X-Amzn-Trace-Id") required this.xAmznTraceId});

  factory _$HeadersImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeadersImplFromJson(json);

  @override
  @JsonKey(name: "Accept-Encoding")
  final String acceptEncoding;
  @override
  @JsonKey(name: "Content-Type")
  final String contentType;
  @override
  @JsonKey(name: "Host")
  final String host;
  @override
  @JsonKey(name: "User-Agent")
  final String userAgent;
  @override
  @JsonKey(name: "X-Amzn-Trace-Id")
  final String xAmznTraceId;

  @override
  String toString() {
    return 'Headers(acceptEncoding: $acceptEncoding, contentType: $contentType, host: $host, userAgent: $userAgent, xAmznTraceId: $xAmznTraceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeadersImpl &&
            (identical(other.acceptEncoding, acceptEncoding) ||
                other.acceptEncoding == acceptEncoding) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent) &&
            (identical(other.xAmznTraceId, xAmznTraceId) ||
                other.xAmznTraceId == xAmznTraceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, acceptEncoding, contentType, host, userAgent, xAmznTraceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeadersImplCopyWith<_$HeadersImpl> get copyWith =>
      __$$HeadersImplCopyWithImpl<_$HeadersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeadersImplToJson(
      this,
    );
  }
}

abstract class _Headers implements Headers {
  const factory _Headers(
      {@JsonKey(name: "Accept-Encoding") required final String acceptEncoding,
      @JsonKey(name: "Content-Type") required final String contentType,
      @JsonKey(name: "Host") required final String host,
      @JsonKey(name: "User-Agent") required final String userAgent,
      @JsonKey(name: "X-Amzn-Trace-Id")
      required final String xAmznTraceId}) = _$HeadersImpl;

  factory _Headers.fromJson(Map<String, dynamic> json) = _$HeadersImpl.fromJson;

  @override
  @JsonKey(name: "Accept-Encoding")
  String get acceptEncoding;
  @override
  @JsonKey(name: "Content-Type")
  String get contentType;
  @override
  @JsonKey(name: "Host")
  String get host;
  @override
  @JsonKey(name: "User-Agent")
  String get userAgent;
  @override
  @JsonKey(name: "X-Amzn-Trace-Id")
  String get xAmznTraceId;
  @override
  @JsonKey(ignore: true)
  _$$HeadersImplCopyWith<_$HeadersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
