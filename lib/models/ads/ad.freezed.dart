// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ad _$AdFromJson(Map<String, dynamic> json) {
  return _Ad.fromJson(json);
}

/// @nodoc
mixin _$Ad {
  String? get place => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdCopyWith<Ad> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdCopyWith<$Res> {
  factory $AdCopyWith(Ad value, $Res Function(Ad) then) =
      _$AdCopyWithImpl<$Res, Ad>;
  @useResult
  $Res call({String? place, String? url, String? imageUrl});
}

/// @nodoc
class _$AdCopyWithImpl<$Res, $Val extends Ad> implements $AdCopyWith<$Res> {
  _$AdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdCopyWith<$Res> implements $AdCopyWith<$Res> {
  factory _$$_AdCopyWith(_$_Ad value, $Res Function(_$_Ad) then) =
      __$$_AdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? place, String? url, String? imageUrl});
}

/// @nodoc
class __$$_AdCopyWithImpl<$Res> extends _$AdCopyWithImpl<$Res, _$_Ad>
    implements _$$_AdCopyWith<$Res> {
  __$$_AdCopyWithImpl(_$_Ad _value, $Res Function(_$_Ad) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_Ad(
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ad implements _Ad {
  _$_Ad({this.place, this.url, this.imageUrl});

  factory _$_Ad.fromJson(Map<String, dynamic> json) => _$$_AdFromJson(json);

  @override
  final String? place;
  @override
  final String? url;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'Ad(place: $place, url: $url, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ad &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, place, url, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdCopyWith<_$_Ad> get copyWith =>
      __$$_AdCopyWithImpl<_$_Ad>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdToJson(
      this,
    );
  }
}

abstract class _Ad implements Ad {
  factory _Ad(
      {final String? place, final String? url, final String? imageUrl}) = _$_Ad;

  factory _Ad.fromJson(Map<String, dynamic> json) = _$_Ad.fromJson;

  @override
  String? get place;
  @override
  String? get url;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AdCopyWith<_$_Ad> get copyWith => throw _privateConstructorUsedError;
}
