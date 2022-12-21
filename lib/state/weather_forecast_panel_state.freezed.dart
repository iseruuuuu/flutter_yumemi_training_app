// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_forecast_panel_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherForecastPanelState {
  String get weatherImage => throw _privateConstructorUsedError;
  String get maxTemperature => throw _privateConstructorUsedError;
  String get minTemperature => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherForecastPanelStateCopyWith<WeatherForecastPanelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastPanelStateCopyWith<$Res> {
  factory $WeatherForecastPanelStateCopyWith(WeatherForecastPanelState value,
          $Res Function(WeatherForecastPanelState) then) =
      _$WeatherForecastPanelStateCopyWithImpl<$Res, WeatherForecastPanelState>;
  @useResult
  $Res call(
      {String weatherImage, String maxTemperature, String minTemperature});
}

/// @nodoc
class _$WeatherForecastPanelStateCopyWithImpl<$Res,
        $Val extends WeatherForecastPanelState>
    implements $WeatherForecastPanelStateCopyWith<$Res> {
  _$WeatherForecastPanelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherImage = null,
    Object? maxTemperature = null,
    Object? minTemperature = null,
  }) {
    return _then(_value.copyWith(
      weatherImage: null == weatherImage
          ? _value.weatherImage
          : weatherImage // ignore: cast_nullable_to_non_nullable
              as String,
      maxTemperature: null == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as String,
      minTemperature: null == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherForecastPanelStateCopyWith<$Res>
    implements $WeatherForecastPanelStateCopyWith<$Res> {
  factory _$$_WeatherForecastPanelStateCopyWith(
          _$_WeatherForecastPanelState value,
          $Res Function(_$_WeatherForecastPanelState) then) =
      __$$_WeatherForecastPanelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String weatherImage, String maxTemperature, String minTemperature});
}

/// @nodoc
class __$$_WeatherForecastPanelStateCopyWithImpl<$Res>
    extends _$WeatherForecastPanelStateCopyWithImpl<$Res,
        _$_WeatherForecastPanelState>
    implements _$$_WeatherForecastPanelStateCopyWith<$Res> {
  __$$_WeatherForecastPanelStateCopyWithImpl(
      _$_WeatherForecastPanelState _value,
      $Res Function(_$_WeatherForecastPanelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherImage = null,
    Object? maxTemperature = null,
    Object? minTemperature = null,
  }) {
    return _then(_$_WeatherForecastPanelState(
      weatherImage: null == weatherImage
          ? _value.weatherImage
          : weatherImage // ignore: cast_nullable_to_non_nullable
              as String,
      maxTemperature: null == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as String,
      minTemperature: null == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeatherForecastPanelState implements _WeatherForecastPanelState {
  const _$_WeatherForecastPanelState(
      {this.weatherImage = '',
      this.maxTemperature = '**',
      this.minTemperature = '**'});

  @override
  @JsonKey()
  final String weatherImage;
  @override
  @JsonKey()
  final String maxTemperature;
  @override
  @JsonKey()
  final String minTemperature;

  @override
  String toString() {
    return 'WeatherForecastPanelState(weatherImage: $weatherImage, maxTemperature: $maxTemperature, minTemperature: $minTemperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherForecastPanelState &&
            (identical(other.weatherImage, weatherImage) ||
                other.weatherImage == weatherImage) &&
            (identical(other.maxTemperature, maxTemperature) ||
                other.maxTemperature == maxTemperature) &&
            (identical(other.minTemperature, minTemperature) ||
                other.minTemperature == minTemperature));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, weatherImage, maxTemperature, minTemperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherForecastPanelStateCopyWith<_$_WeatherForecastPanelState>
      get copyWith => __$$_WeatherForecastPanelStateCopyWithImpl<
          _$_WeatherForecastPanelState>(this, _$identity);
}

abstract class _WeatherForecastPanelState implements WeatherForecastPanelState {
  const factory _WeatherForecastPanelState(
      {final String weatherImage,
      final String maxTemperature,
      final String minTemperature}) = _$_WeatherForecastPanelState;

  @override
  String get weatherImage;
  @override
  String get maxTemperature;
  @override
  String get minTemperature;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherForecastPanelStateCopyWith<_$_WeatherForecastPanelState>
      get copyWith => throw _privateConstructorUsedError;
}
