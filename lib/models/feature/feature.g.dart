// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Feature _$$_FeatureFromJson(Map<String, dynamic> json) => _$_Feature(
      registration: json['registration'] as bool?,
      localTimeLine: json['localTimeLine'] as bool?,
      globalTimeLine: json['globalTimeLine'] as bool?,
      elasticsearch: json['elasticsearch'] as bool?,
      hcaptcha: json['hcaptcha'] as bool?,
      recaptcha: json['recaptcha'] as bool?,
      objectStorage: json['objectStorage'] as bool?,
      twitter: json['twitter'] as bool?,
      github: json['github'] as bool?,
      discord: json['discord'] as bool?,
      serviceWorker: json['serviceWorker'] as bool?,
      miauth: json['miauth'] as bool?,
    );

Map<String, dynamic> _$$_FeatureToJson(_$_Feature instance) =>
    <String, dynamic>{
      'registration': instance.registration,
      'localTimeLine': instance.localTimeLine,
      'globalTimeLine': instance.globalTimeLine,
      'elasticsearch': instance.elasticsearch,
      'hcaptcha': instance.hcaptcha,
      'recaptcha': instance.recaptcha,
      'objectStorage': instance.objectStorage,
      'twitter': instance.twitter,
      'github': instance.github,
      'discord': instance.discord,
      'serviceWorker': instance.serviceWorker,
      'miauth': instance.miauth,
    };
