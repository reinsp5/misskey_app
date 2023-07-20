import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_response.freezed.dart';
part 'update_response.g.dart';

@freezed
class AccountUpdateRequest with _$AccountUpdateRequest {
  factory AccountUpdateRequest({
    @Default(null) String? name,
    @Default(null) String? description,
    @Default(null) String? location,
    @Default(null) String? birthday,
    @Default(null) String? lang,
    @Default(null) String? avatarId,
    @Default(null) String? bannerId,
    @Default(null) Map<String, String>? fields,
    @Default(false) bool isLocked,
    @Default(false) bool isExplorable,
    @Default(false) bool hidenOnLineStatus,
    @Default(false) bool publicReactions,
    @Default(false) bool carefulBot,
    @Default(false) bool autoAcceptFollowed,
    @Default(false) bool noCrawle,
    @Default(false) bool isBot,
    @Default(false) bool isCat,
    @Default(false) bool showTimelineReplies,
    @Default(false) bool injectFeaturedNote,
    @Default(false) bool receiveAnnouncementEmail,
    @Default(false) bool alwaysMarkNsfw,
    @Default(false) bool autoSensitive,
    @Default(false) bool ffVisibility,
    @Default(null) List<String>? pinnedPageId,
    @Default(null) List<String>? mutedWords,
    @Default(null) List<String>? mutedInstances,
    @Default(null) List<String>? mutingNotificationTypes,
    @Default(null) List<String>? emailNotificationTypes,
  }) = _AccountUpdateRequest;

  factory AccountUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountUpdateRequestFromJson(json);
}
