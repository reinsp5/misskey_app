import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad.freezed.dart';
part 'ad.g.dart';

@freezed
class Ad with _$Ad {
  factory Ad({
    String? place,
    String? url,
    String? imageUrl,
  }) = _Ad;

  factory Ad.fromJson(Map<String, dynamic> json) => _$AdFromJson(json);
}
