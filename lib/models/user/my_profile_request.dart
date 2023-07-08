import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_profile_request.freezed.dart';
part 'my_profile_request.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
class MyProfileRequest with _$MyProfileRequest {
  factory MyProfileRequest({
    required String? i,
  }) = _MyProfileRequest;

  factory MyProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$MyProfileRequestFromJson(json);
}
