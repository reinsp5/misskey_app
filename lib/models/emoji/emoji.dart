import 'package:freezed_annotation/freezed_annotation.dart';

part 'emoji.freezed.dart';
part 'emoji.g.dart';

@freezed
class Emoji with _$Emoji {
  factory Emoji({
    String? id,
    String? name,
    List<String>? aliases,
    String? category,
    String? host,
    String? url,
  }) = _Emoji;

  factory Emoji.fromJson(Map<String, dynamic> json) => _$EmojiFromJson(json);
}
