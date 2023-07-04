// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miauth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MiAuthResponse _$$_MiAuthResponseFromJson(Map<String, dynamic> json) =>
    _$_MiAuthResponse(
      ok: json['ok'] as bool,
      token: json['token'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MiAuthResponseToJson(_$_MiAuthResponse instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'token': instance.token,
      'user': instance.user,
    };
