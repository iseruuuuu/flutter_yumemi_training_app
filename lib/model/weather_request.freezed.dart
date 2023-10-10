// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherRequest _$WeatherRequestFromJson(Map<String, dynamic> json) {
  return _WeatherRequest.fromJson(json);
}

/// @nodoc
mixin _$WeatherRequest {
  String get area => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherRequestCopyWith<WeatherRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherRequestCopyWith<$Res> {
  factory $WeatherRequestCopyWith(
          WeatherRequest value, $Res Function(WeatherRequest) then) =
      _$WeatherRequestCopyWithImpl<$Res, WeatherRequest>;
  @useResult
  $Res call({String area, String date});
}

/// @nodoc
class _$WeatherRequestCopyWithImpl<$Res, $Val extends WeatherRequest>
    implements $WeatherRequestCopyWith<$Res> {
  _$WeatherRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherRequestImplCopyWith<$Res>
    implements $WeatherRequestCopyWith<$Res> {
  factory _$$WeatherRequestImplCopyWith(_$WeatherRequestImpl value,
          $Res Function(_$WeatherRequestImpl) then) =
      __$$WeatherRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String area, String date});
}

/// @nodoc
class __$$WeatherRequestImplCopyWithImpl<$Res>
    extends _$WeatherRequestCopyWithImpl<$Res, _$WeatherRequestImpl>
    implements _$$WeatherRequestImplCopyWith<$Res> {
  __$$WeatherRequestImplCopyWithImpl(
      _$WeatherRequestImpl _value, $Res Function(_$WeatherRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? date = null,
  }) {
    return _then(_$WeatherRequestImpl(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherRequestImpl extends _WeatherRequest {
  const _$WeatherRequestImpl(
      {this.area = 'tokyo', this.date = '2020-04-01T12:00:00+09:00'})
      : super._();

  factory _$WeatherRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherRequestImplFromJson(json);

  @override
  @JsonKey()
  final String area;
  @override
  @JsonKey()
  final String date;

  @override
  String toString() {
    return 'WeatherRequest(area: $area, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherRequestImpl &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, area, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherRequestImplCopyWith<_$WeatherRequestImpl> get copyWith =>
      __$$WeatherRequestImplCopyWithImpl<_$WeatherRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherRequestImplToJson(
      this,
    );
  }
}

abstract class _WeatherRequest extends WeatherRequest {
  const factory _WeatherRequest({final String area, final String date}) =
      _$WeatherRequestImpl;
  const _WeatherRequest._() : super._();

  factory _WeatherRequest.fromJson(Map<String, dynamic> json) =
      _$WeatherRequestImpl.fromJson;

  @override
  String get area;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$WeatherRequestImplCopyWith<_$WeatherRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
