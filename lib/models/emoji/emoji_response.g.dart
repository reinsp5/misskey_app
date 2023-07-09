// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmojiResponse _$$_EmojiResponseFromJson(Map<String, dynamic> json) =>
    _$_EmojiResponse(
      emojis: (json['emojis'] as List<dynamic>?)
          ?.map((e) => Emoji.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EmojiResponseToJson(_$_EmojiResponse instance) =>
    <String, dynamic>{
      'emojis': instance.emojis,
    };
