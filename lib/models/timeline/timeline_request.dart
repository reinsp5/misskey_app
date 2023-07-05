import 'package:freezed_annotation/freezed_annotation.dart';

part 'timeline_request.freezed.dart';
part 'timeline_request.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
class TimelineRequest with _$TimelineRequest {
  factory TimelineRequest({
    required String? i,
    @JsonKey(name: 'sinceId', disallowNullValue: true) String? sinceId,
    @JsonKey(name: 'untilId', disallowNullValue: true) String? untilId,
  }) = _TimelineRequest;

  factory TimelineRequest.fromJson(Map<String, dynamic> json) =>
      _$TimelineRequestFromJson(json);
}
