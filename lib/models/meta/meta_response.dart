import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_client/models/ads/ad.dart';
import 'package:misskey_client/models/emoji/emoji.dart';
import 'package:misskey_client/models/feature/feature.dart';

part 'meta_response.freezed.dart';
part 'meta_response.g.dart';

@freezed
class MetaResponse with _$MetaResponse {
  factory MetaResponse({
    String? maintainerName,
    String? maintainerEmail,
    String? version,
    String? name,
    String? url,
    String? description,
    List<String>? langs,
    String? tosUrl,
    String? repositoryUrl,
    String? feedbackUrl,
    String? defaultDarkTheme,
    String? defaultLightTheme,
    bool? disableRegistration,
    bool? disableLocalTimeline,
    bool? disableGlobalTimeline,
    int? driveCapacityPerLocalUserMb,
    int? driveCapacityPerRemoteUserMb,
    bool? cacheRemoteFiles,
    bool? emailRequiredForSignup,
    bool? enableHcaptcha,
    String? hcaptchaSiteKey,
    bool? enableRecaptcha,
    String? recaptchaSiteKey,
    String? swPublickey,
    String? mascotImageUrl,
    String? bannerUrl,
    String? errorImageUrl,
    String? iconUrl,
    int? maxNoteTextLength,
    List<Emoji>? emojis,
    List<Ad>? ads,
    bool? requireSetup,
    bool? enableEmail,
    bool? enableTwitterIntegration,
    bool? enableGithubIntegration,
    bool? enableDiscordIntegration,
    bool? enableServiceWorker,
    bool? translatorAvailable,
    String? proxyAccountName,
    Feature? features,
  }) = _MetaResponse;

  factory MetaResponse.fromJson(Map<String, dynamic> json) =>
      _$MetaResponseFromJson(json);
}
