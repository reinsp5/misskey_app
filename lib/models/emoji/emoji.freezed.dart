// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emoji.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Emoji _$EmojiFromJson(Map<String, dynamic> json) {
  return _Emoji.fromJson(json);
}

/// @nodoc
mixin _$Emoji {
  String? get id => throw _privateConstructorUsedError;
  List<String>? get aliases => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get host => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmojiCopyWith<Emoji> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmojiCopyWith<$Res> {
  factory $EmojiCopyWith(Emoji value, $Res Function(Emoji) then) =
      _$EmojiCopyWithImpl<$Res, Emoji>;
  @useResult
  $Res call(
      {String? id,
      List<String>? aliases,
      String? category,
      String? host,
      String? url});
}

/// @nodoc
class _$EmojiCopyWithImpl<$Res, $Val extends Emoji>
    implements $EmojiCopyWith<$Res> {
  _$EmojiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? aliases = freezed,
    Object? category = freezed,
    Object? host = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      aliases: freezed == aliases
          ? _value.aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmojiCopyWith<$Res> implements $EmojiCopyWith<$Res> {
  factory _$$_EmojiCopyWith(_$_Emoji value, $Res Function(_$_Emoji) then) =
      __$$_EmojiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      List<String>? aliases,
      String? category,
      String? host,
      String? url});
}

/// @nodoc
class __$$_EmojiCopyWithImpl<$Res> extends _$EmojiCopyWithImpl<$Res, _$_Emoji>
    implements _$$_EmojiCopyWith<$Res> {
  __$$_EmojiCopyWithImpl(_$_Emoji _value, $Res Function(_$_Emoji) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? aliases = freezed,
    Object? category = freezed,
    Object? host = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Emoji(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      aliases: freezed == aliases
          ? _value._aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Emoji implements _Emoji {
  _$_Emoji(
      {this.id,
      final List<String>? aliases,
      this.category,
      this.host,
      this.url})
      : _aliases = aliases;

  factory _$_Emoji.fromJson(Map<String, dynamic> json) =>
      _$$_EmojiFromJson(json);

  @override
  final String? id;
  final List<String>? _aliases;
  @override
  List<String>? get aliases {
    final value = _aliases;
    if (value == null) return null;
    if (_aliases is EqualUnmodifiableListView) return _aliases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? category;
  @override
  final String? host;
  @override
  final String? url;

  @override
  String toString() {
    return 'Emoji(id: $id, aliases: $aliases, category: $category, host: $host, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Emoji &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._aliases, _aliases) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_aliases), category, host, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmojiCopyWith<_$_Emoji> get copyWith =>
      __$$_EmojiCopyWithImpl<_$_Emoji>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmojiToJson(
      this,
    );
  }
}

abstract class _Emoji implements Emoji {
  factory _Emoji(
      {final String? id,
      final List<String>? aliases,
      final String? category,
      final String? host,
      final String? url}) = _$_Emoji;

  factory _Emoji.fromJson(Map<String, dynamic> json) = _$_Emoji.fromJson;

  @override
  String? get id;
  @override
  List<String>? get aliases;
  @override
  String? get category;
  @override
  String? get host;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_EmojiCopyWith<_$_Emoji> get copyWith =>
      throw _privateConstructorUsedError;
}
