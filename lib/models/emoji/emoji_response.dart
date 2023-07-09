import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_client/models/emoji/emoji.dart';

part 'emoji_response.freezed.dart';
part 'emoji_response.g.dart';

@freezed
class EmojiResponse with _$EmojiResponse {
  const factory EmojiResponse({
    List<Emoji>? emojis,
  }) = _EmojiResponse;

  factory EmojiResponse.fromJson(Map<String, dynamic> json) =>
      _$EmojiResponseFromJson(json);
}
