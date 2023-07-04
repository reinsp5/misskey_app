import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_client/models/user/user.dart';

part 'miauth_response.freezed.dart';
part 'miauth_response.g.dart';

@freezed
class MiAuthResponse with _$MiAuthResponse {
  const factory MiAuthResponse({
    required bool ok,
    String? token,
    User? user,
  }) = _MiAuthResponse;

  factory MiAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$MiAuthResponseFromJson(json);
}
