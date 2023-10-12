// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherResult _$WeatherResultFromJson(Map<String, dynamic> json) {
  return _WeatherResult.fromJson(json);
}

/// @nodoc
mixin _$WeatherResult {
  WeatherCondition get weatherCondition => throw _privateConstructorUsedError;
  int get maxTemperature => throw _privateConstructorUsedError;
  int get minTemperature => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherResultCopyWith<WeatherResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResultCopyWith<$Res> {
  factory $WeatherResultCopyWith(
          WeatherResult value, $Res Function(WeatherResult) then) =
      _$WeatherResultCopyWithImpl<$Res, WeatherResult>;
  @useResult
  $Res call(
      {WeatherCondition weatherCondition,
      int maxTemperature,
      int minTemperature,
      DateTime date});
}

/// @nodoc
class _$WeatherResultCopyWithImpl<$Res, $Val extends WeatherResult>
    implements $WeatherResultCopyWith<$Res> {
  _$WeatherResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherCondition = null,
    Object? maxTemperature = null,
    Object? minTemperature = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      weatherCondition: null == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      maxTemperature: null == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      minTemperature: null == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherResultImplCopyWith<$Res>
    implements $WeatherResultCopyWith<$Res> {
  factory _$$WeatherResultImplCopyWith(
          _$WeatherResultImpl value, $Res Function(_$WeatherResultImpl) then) =
      __$$WeatherResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WeatherCondition weatherCondition,
      int maxTemperature,
      int minTemperature,
      DateTime date});
}

/// @nodoc
class __$$WeatherResultImplCopyWithImpl<$Res>
    extends _$WeatherResultCopyWithImpl<$Res, _$WeatherResultImpl>
    implements _$$WeatherResultImplCopyWith<$Res> {
  __$$WeatherResultImplCopyWithImpl(
      _$WeatherResultImpl _value, $Res Function(_$WeatherResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherCondition = null,
    Object? maxTemperature = null,
    Object? minTemperature = null,
    Object? date = null,
  }) {
    return _then(_$WeatherResultImpl(
      weatherCondition: null == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      maxTemperature: null == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      minTemperature: null == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherResultImpl extends _WeatherResult with DiagnosticableTreeMixin {
  const _$WeatherResultImpl(
      {required this.weatherCondition,
      required this.maxTemperature,
      required this.minTemperature,
      required this.date})
      : super._();

  factory _$WeatherResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherResultImplFromJson(json);

  @override
  final WeatherCondition weatherCondition;
  @override
  final int maxTemperature;
  @override
  final int minTemperature;
  @override
  final DateTime date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherResult(weatherCondition: $weatherCondition, maxTemperature: $maxTemperature, minTemperature: $minTemperature, date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherResult'))
      ..add(DiagnosticsProperty('weatherCondition', weatherCondition))
      ..add(DiagnosticsProperty('maxTemperature', maxTemperature))
      ..add(DiagnosticsProperty('minTemperature', minTemperature))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherResultImpl &&
            (identical(other.weatherCondition, weatherCondition) ||
                other.weatherCondition == weatherCondition) &&
            (identical(other.maxTemperature, maxTemperature) ||
                other.maxTemperature == maxTemperature) &&
            (identical(other.minTemperature, minTemperature) ||
                other.minTemperature == minTemperature) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, weatherCondition, maxTemperature, minTemperature, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherResultImplCopyWith<_$WeatherResultImpl> get copyWith =>
      __$$WeatherResultImplCopyWithImpl<_$WeatherResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherResultImplToJson(
      this,
    );
  }
}

abstract class _WeatherResult extends WeatherResult {
  const factory _WeatherResult(
      {required final WeatherCondition weatherCondition,
      required final int maxTemperature,
      required final int minTemperature,
      required final DateTime date}) = _$WeatherResultImpl;
  const _WeatherResult._() : super._();

  factory _WeatherResult.fromJson(Map<String, dynamic> json) =
      _$WeatherResultImpl.fromJson;

  @override
  WeatherCondition get weatherCondition;
  @override
  int get maxTemperature;
  @override
  int get minTemperature;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$WeatherResultImplCopyWith<_$WeatherResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
