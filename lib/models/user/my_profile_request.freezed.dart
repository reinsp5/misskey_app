// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyProfileRequest _$MyProfileRequestFromJson(Map<String, dynamic> json) {
  return _MyProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$MyProfileRequest {
  String? get i => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyProfileRequestCopyWith<MyProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProfileRequestCopyWith<$Res> {
  factory $MyProfileRequestCopyWith(
          MyProfileRequest value, $Res Function(MyProfileRequest) then) =
      _$MyProfileRequestCopyWithImpl<$Res, MyProfileRequest>;
  @useResult
  $Res call({String? i});
}

/// @nodoc
class _$MyProfileRequestCopyWithImpl<$Res, $Val extends MyProfileRequest>
    implements $MyProfileRequestCopyWith<$Res> {
  _$MyProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? i = freezed,
  }) {
    return _then(_value.copyWith(
      i: freezed == i
          ? _value.i
          : i // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyProfileRequestCopyWith<$Res>
    implements $MyProfileRequestCopyWith<$Res> {
  factory _$$_MyProfileRequestCopyWith(
          _$_MyProfileRequest value, $Res Function(_$_MyProfileRequest) then) =
      __$$_MyProfileRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? i});
}

/// @nodoc
class __$$_MyProfileRequestCopyWithImpl<$Res>
    extends _$MyProfileRequestCopyWithImpl<$Res, _$_MyProfileRequest>
    implements _$$_MyProfileRequestCopyWith<$Res> {
  __$$_MyProfileRequestCopyWithImpl(
      _$_MyProfileRequest _value, $Res Function(_$_MyProfileRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? i = freezed,
  }) {
    return _then(_$_MyProfileRequest(
      i: freezed == i
          ? _value.i
          : i // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyProfileRequest implements _MyProfileRequest {
  _$_MyProfileRequest({required this.i});

  factory _$_MyProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MyProfileRequestFromJson(json);

  @override
  final String? i;

  @override
  String toString() {
    return 'MyProfileRequest(i: $i)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyProfileRequest &&
            (identical(other.i, i) || other.i == i));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, i);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyProfileRequestCopyWith<_$_MyProfileRequest> get copyWith =>
      __$$_MyProfileRequestCopyWithImpl<_$_MyProfileRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyProfileRequestToJson(
      this,
    );
  }
}

abstract class _MyProfileRequest implements MyProfileRequest {
  factory _MyProfileRequest({required final String? i}) = _$_MyProfileRequest;

  factory _MyProfileRequest.fromJson(Map<String, dynamic> json) =
      _$_MyProfileRequest.fromJson;

  @override
  String? get i;
  @override
  @JsonKey(ignore: true)
  _$$_MyProfileRequestCopyWith<_$_MyProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
