// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherRequestState _$WeatherRequestStateFromJson(Map<String, dynamic> json) {
  return _WeatherRequestState.fromJson(json);
}

/// @nodoc
mixin _$WeatherRequestState {
  String get area => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherRequestStateCopyWith<WeatherRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherRequestStateCopyWith<$Res> {
  factory $WeatherRequestStateCopyWith(
          WeatherRequestState value, $Res Function(WeatherRequestState) then) =
      _$WeatherRequestStateCopyWithImpl<$Res, WeatherRequestState>;
  @useResult
  $Res call({String area, String date});
}

/// @nodoc
class _$WeatherRequestStateCopyWithImpl<$Res, $Val extends WeatherRequestState>
    implements $WeatherRequestStateCopyWith<$Res> {
  _$WeatherRequestStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_WeatherRequestStateCopyWith<$Res>
    implements $WeatherRequestStateCopyWith<$Res> {
  factory _$$_WeatherRequestStateCopyWith(_$_WeatherRequestState value,
          $Res Function(_$_WeatherRequestState) then) =
      __$$_WeatherRequestStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String area, String date});
}

/// @nodoc
class __$$_WeatherRequestStateCopyWithImpl<$Res>
    extends _$WeatherRequestStateCopyWithImpl<$Res, _$_WeatherRequestState>
    implements _$$_WeatherRequestStateCopyWith<$Res> {
  __$$_WeatherRequestStateCopyWithImpl(_$_WeatherRequestState _value,
      $Res Function(_$_WeatherRequestState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? date = null,
  }) {
    return _then(_$_WeatherRequestState(
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
class _$_WeatherRequestState extends _WeatherRequestState {
  const _$_WeatherRequestState(
      {this.area = 'tokyo', this.date = '2020-04-01T12:00:00+09:00'})
      : super._();

  factory _$_WeatherRequestState.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherRequestStateFromJson(json);

  @override
  @JsonKey()
  final String area;
  @override
  @JsonKey()
  final String date;

  @override
  String toString() {
    return 'WeatherRequestState(area: $area, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherRequestState &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, area, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherRequestStateCopyWith<_$_WeatherRequestState> get copyWith =>
      __$$_WeatherRequestStateCopyWithImpl<_$_WeatherRequestState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherRequestStateToJson(
      this,
    );
  }
}

abstract class _WeatherRequestState extends WeatherRequestState {
  const factory _WeatherRequestState({final String area, final String date}) =
      _$_WeatherRequestState;
  const _WeatherRequestState._() : super._();

  factory _WeatherRequestState.fromJson(Map<String, dynamic> json) =
      _$_WeatherRequestState.fromJson;

  @override
  String get area;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherRequestStateCopyWith<_$_WeatherRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}
