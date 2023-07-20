// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountUpdateRequest _$$_AccountUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    _$_AccountUpdateRequest(
      name: json['name'] as String? ?? null,
      description: json['description'] as String? ?? null,
      location: json['location'] as String? ?? null,
      birthday: json['birthday'] as String? ?? null,
      lang: json['lang'] as String? ?? null,
      avatarId: json['avatarId'] as String? ?? null,
      bannerId: json['bannerId'] as String? ?? null,
      fields: (json['fields'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          null,
      isLocked: json['isLocked'] as bool? ?? false,
      isExplorable: json['isExplorable'] as bool? ?? false,
      hidenOnLineStatus: json['hidenOnLineStatus'] as bool? ?? false,
      publicReactions: json['publicReactions'] as bool? ?? false,
      carefulBot: json['carefulBot'] as bool? ?? false,
      autoAcceptFollowed: json['autoAcceptFollowed'] as bool? ?? false,
      noCrawle: json['noCrawle'] as bool? ?? false,
      isBot: json['isBot'] as bool? ?? false,
      isCat: json['isCat'] as bool? ?? false,
      showTimelineReplies: json['showTimelineReplies'] as bool? ?? false,
      injectFeaturedNote: json['injectFeaturedNote'] as bool? ?? false,
      receiveAnnouncementEmail:
          json['receiveAnnouncementEmail'] as bool? ?? false,
      alwaysMarkNsfw: json['alwaysMarkNsfw'] as bool? ?? false,
      autoSensitive: json['autoSensitive'] as bool? ?? false,
      ffVisibility: json['ffVisibility'] as bool? ?? false,
      pinnedPageId: (json['pinnedPageId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          null,
      mutedWords: (json['mutedWords'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          null,
      mutedInstances: (json['mutedInstances'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          null,
      mutingNotificationTypes:
          (json['mutingNotificationTypes'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              null,
      emailNotificationTypes: (json['emailNotificationTypes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          null,
    );

Map<String, dynamic> _$$_AccountUpdateRequestToJson(
        _$_AccountUpdateRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'birthday': instance.birthday,
      'lang': instance.lang,
      'avatarId': instance.avatarId,
      'bannerId': instance.bannerId,
      'fields': instance.fields,
      'isLocked': instance.isLocked,
      'isExplorable': instance.isExplorable,
      'hidenOnLineStatus': instance.hidenOnLineStatus,
      'publicReactions': instance.publicReactions,
      'carefulBot': instance.carefulBot,
      'autoAcceptFollowed': instance.autoAcceptFollowed,
      'noCrawle': instance.noCrawle,
      'isBot': instance.isBot,
      'isCat': instance.isCat,
      'showTimelineReplies': instance.showTimelineReplies,
      'injectFeaturedNote': instance.injectFeaturedNote,
      'receiveAnnouncementEmail': instance.receiveAnnouncementEmail,
      'alwaysMarkNsfw': instance.alwaysMarkNsfw,
      'autoSensitive': instance.autoSensitive,
      'ffVisibility': instance.ffVisibility,
      'pinnedPageId': instance.pinnedPageId,
      'mutedWords': instance.mutedWords,
      'mutedInstances': instance.mutedInstances,
      'mutingNotificationTypes': instance.mutingNotificationTypes,
      'emailNotificationTypes': instance.emailNotificationTypes,
    };
