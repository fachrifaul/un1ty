// To parse this JSON data, do
//
//     final getResponse = getResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_response.freezed.dart';
part 'get_response.g.dart';

GetResponse getResponseFromJson(String str) =>
    GetResponse.fromJson(json.decode(str));

String getResponseToJson(GetResponse data) => json.encode(data.toJson());

@freezed
class GetResponse with _$GetResponse {
  const factory GetResponse({
    @JsonKey(name: "args") required Args args,
    @JsonKey(name: "headers") required Headers headers,
    @JsonKey(name: "origin") required String origin,
    @JsonKey(name: "url") required String url,
  }) = _GetResponse;

  factory GetResponse.fromJson(Map<String, dynamic> json) =>
      _$GetResponseFromJson(json);
}

@freezed
class Args with _$Args {
  const factory Args() = _Args;

  factory Args.fromJson(Map<String, dynamic> json) => _$ArgsFromJson(json);
}

@freezed
class Headers with _$Headers {
  const factory Headers({
    @JsonKey(name: "Accept-Encoding") required String acceptEncoding,
    @JsonKey(name: "Content-Type") required String contentType,
    @JsonKey(name: "Host") required String host,
    @JsonKey(name: "User-Agent") required String userAgent,
    @JsonKey(name: "X-Amzn-Trace-Id") required String xAmznTraceId,
  }) = _Headers;

  factory Headers.fromJson(Map<String, dynamic> json) =>
      _$HeadersFromJson(json);
}
