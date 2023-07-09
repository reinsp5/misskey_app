// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Emoji _$$_EmojiFromJson(Map<String, dynamic> json) => _$_Emoji(
      id: json['id'] as String?,
      name: json['name'] as String?,
      aliases:
          (json['aliases'] as List<dynamic>?)?.map((e) => e as String).toList(),
      category: json['category'] as String?,
      host: json['host'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_EmojiToJson(_$_Emoji instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'aliases': instance.aliases,
      'category': instance.category,
      'host': instance.host,
      'url': instance.url,
    };
