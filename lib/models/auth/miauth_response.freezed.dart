// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'miauth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MiAuthResponse _$MiAuthResponseFromJson(Map<String, dynamic> json) {
  return _MiAuthResponse.fromJson(json);
}

/// @nodoc
mixin _$MiAuthResponse {
  bool get ok => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MiAuthResponseCopyWith<MiAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiAuthResponseCopyWith<$Res> {
  factory $MiAuthResponseCopyWith(
          MiAuthResponse value, $Res Function(MiAuthResponse) then) =
      _$MiAuthResponseCopyWithImpl<$Res, MiAuthResponse>;
  @useResult
  $Res call({bool ok, String? token, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$MiAuthResponseCopyWithImpl<$Res, $Val extends MiAuthResponse>
    implements $MiAuthResponseCopyWith<$Res> {
  _$MiAuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ok = null,
    Object? token = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      ok: null == ok
          ? _value.ok
          : ok // ignore: cast_nullable_to_non_nullable
              as bool,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MiAuthResponseCopyWith<$Res>
    implements $MiAuthResponseCopyWith<$Res> {
  factory _$$_MiAuthResponseCopyWith(
          _$_MiAuthResponse value, $Res Function(_$_MiAuthResponse) then) =
      __$$_MiAuthResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool ok, String? token, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_MiAuthResponseCopyWithImpl<$Res>
    extends _$MiAuthResponseCopyWithImpl<$Res, _$_MiAuthResponse>
    implements _$$_MiAuthResponseCopyWith<$Res> {
  __$$_MiAuthResponseCopyWithImpl(
      _$_MiAuthResponse _value, $Res Function(_$_MiAuthResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ok = null,
    Object? token = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_MiAuthResponse(
      ok: null == ok
          ? _value.ok
          : ok // ignore: cast_nullable_to_non_nullable
              as bool,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MiAuthResponse implements _MiAuthResponse {
  const _$_MiAuthResponse({required this.ok, this.token, this.user});

  factory _$_MiAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MiAuthResponseFromJson(json);

  @override
  final bool ok;
  @override
  final String? token;
  @override
  final User? user;

  @override
  String toString() {
    return 'MiAuthResponse(ok: $ok, token: $token, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MiAuthResponse &&
            (identical(other.ok, ok) || other.ok == ok) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ok, token, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MiAuthResponseCopyWith<_$_MiAuthResponse> get copyWith =>
      __$$_MiAuthResponseCopyWithImpl<_$_MiAuthResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MiAuthResponseToJson(
      this,
    );
  }
}

abstract class _MiAuthResponse implements MiAuthResponse {
  const factory _MiAuthResponse(
      {required final bool ok,
      final String? token,
      final User? user}) = _$_MiAuthResponse;

  factory _MiAuthResponse.fromJson(Map<String, dynamic> json) =
      _$_MiAuthResponse.fromJson;

  @override
  bool get ok;
  @override
  String? get token;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_MiAuthResponseCopyWith<_$_MiAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
