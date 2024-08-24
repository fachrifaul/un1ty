// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetResponseImpl _$$GetResponseImplFromJson(Map<String, dynamic> json) =>
    _$GetResponseImpl(
      args: Args.fromJson(json['args'] as Map<String, dynamic>),
      headers: Headers.fromJson(json['headers'] as Map<String, dynamic>),
      origin: json['origin'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$GetResponseImplToJson(_$GetResponseImpl instance) =>
    <String, dynamic>{
      'args': instance.args,
      'headers': instance.headers,
      'origin': instance.origin,
      'url': instance.url,
    };

_$ArgsImpl _$$ArgsImplFromJson(Map<String, dynamic> json) => _$ArgsImpl();

Map<String, dynamic> _$$ArgsImplToJson(_$ArgsImpl instance) =>
    <String, dynamic>{};

_$HeadersImpl _$$HeadersImplFromJson(Map<String, dynamic> json) =>
    _$HeadersImpl(
      acceptEncoding: json['Accept-Encoding'] as String,
      contentType: json['Content-Type'] as String,
      host: json['Host'] as String,
      userAgent: json['User-Agent'] as String,
      xAmznTraceId: json['X-Amzn-Trace-Id'] as String,
    );

Map<String, dynamic> _$$HeadersImplToJson(_$HeadersImpl instance) =>
    <String, dynamic>{
      'Accept-Encoding': instance.acceptEncoding,
      'Content-Type': instance.contentType,
      'Host': instance.host,
      'User-Agent': instance.userAgent,
      'X-Amzn-Trace-Id': instance.xAmznTraceId,
    };
