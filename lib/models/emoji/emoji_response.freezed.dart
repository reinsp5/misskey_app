// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emoji_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmojiResponse _$EmojiResponseFromJson(Map<String, dynamic> json) {
  return _EmojiResponse.fromJson(json);
}

/// @nodoc
mixin _$EmojiResponse {
  List<Emoji>? get emojis => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmojiResponseCopyWith<EmojiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmojiResponseCopyWith<$Res> {
  factory $EmojiResponseCopyWith(
          EmojiResponse value, $Res Function(EmojiResponse) then) =
      _$EmojiResponseCopyWithImpl<$Res, EmojiResponse>;
  @useResult
  $Res call({List<Emoji>? emojis});
}

/// @nodoc
class _$EmojiResponseCopyWithImpl<$Res, $Val extends EmojiResponse>
    implements $EmojiResponseCopyWith<$Res> {
  _$EmojiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emojis = freezed,
  }) {
    return _then(_value.copyWith(
      emojis: freezed == emojis
          ? _value.emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmojiResponseCopyWith<$Res>
    implements $EmojiResponseCopyWith<$Res> {
  factory _$$_EmojiResponseCopyWith(
          _$_EmojiResponse value, $Res Function(_$_EmojiResponse) then) =
      __$$_EmojiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Emoji>? emojis});
}

/// @nodoc
class __$$_EmojiResponseCopyWithImpl<$Res>
    extends _$EmojiResponseCopyWithImpl<$Res, _$_EmojiResponse>
    implements _$$_EmojiResponseCopyWith<$Res> {
  __$$_EmojiResponseCopyWithImpl(
      _$_EmojiResponse _value, $Res Function(_$_EmojiResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emojis = freezed,
  }) {
    return _then(_$_EmojiResponse(
      emojis: freezed == emojis
          ? _value._emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmojiResponse implements _EmojiResponse {
  const _$_EmojiResponse({final List<Emoji>? emojis}) : _emojis = emojis;

  factory _$_EmojiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EmojiResponseFromJson(json);

  final List<Emoji>? _emojis;
  @override
  List<Emoji>? get emojis {
    final value = _emojis;
    if (value == null) return null;
    if (_emojis is EqualUnmodifiableListView) return _emojis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EmojiResponse(emojis: $emojis)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmojiResponse &&
            const DeepCollectionEquality().equals(other._emojis, _emojis));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_emojis));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmojiResponseCopyWith<_$_EmojiResponse> get copyWith =>
      __$$_EmojiResponseCopyWithImpl<_$_EmojiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmojiResponseToJson(
      this,
    );
  }
}

abstract class _EmojiResponse implements EmojiResponse {
  const factory _EmojiResponse({final List<Emoji>? emojis}) = _$_EmojiResponse;

  factory _EmojiResponse.fromJson(Map<String, dynamic> json) =
      _$_EmojiResponse.fromJson;

  @override
  List<Emoji>? get emojis;
  @override
  @JsonKey(ignore: true)
  _$$_EmojiResponseCopyWith<_$_EmojiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
