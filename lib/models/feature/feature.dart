import 'package:freezed_annotation/freezed_annotation.dart';

part 'feature.freezed.dart';
part 'feature.g.dart';

@freezed
class Feature with _$Feature {
  factory Feature({
    bool? registration,
    bool? localTimeLine,
    bool? globalTimeLine,
    bool? elasticsearch,
    bool? hcaptcha,
    bool? recaptcha,
    bool? objectStorage,
    bool? twitter,
    bool? github,
    bool? discord,
    bool? serviceWorker,
    bool? miauth,
  }) = _Feature;

  factory Feature.fromJson(Map<String, dynamic> json) =>
      _$FeatureFromJson(json);
}
