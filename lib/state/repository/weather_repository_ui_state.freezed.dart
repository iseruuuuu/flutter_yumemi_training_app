// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_repository_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherRepositoryUiState {
  String get weatherCondition => throw _privateConstructorUsedError;
  int get maxTemperature => throw _privateConstructorUsedError;
  int get minTemperature => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherRepositoryUiStateCopyWith<WeatherRepositoryUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherRepositoryUiStateCopyWith<$Res> {
  factory $WeatherRepositoryUiStateCopyWith(WeatherRepositoryUiState value,
          $Res Function(WeatherRepositoryUiState) then) =
      _$WeatherRepositoryUiStateCopyWithImpl<$Res, WeatherRepositoryUiState>;
  @useResult
  $Res call(
      {String weatherCondition,
      int maxTemperature,
      int minTemperature,
      String errorMessage});
}

/// @nodoc
class _$WeatherRepositoryUiStateCopyWithImpl<$Res,
        $Val extends WeatherRepositoryUiState>
    implements $WeatherRepositoryUiStateCopyWith<$Res> {
  _$WeatherRepositoryUiStateCopyWithImpl(this._value, this._then);

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
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      weatherCondition: null == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as String,
      maxTemperature: null == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      minTemperature: null == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherRepositoryUiStateCopyWith<$Res>
    implements $WeatherRepositoryUiStateCopyWith<$Res> {
  factory _$$_WeatherRepositoryUiStateCopyWith(
          _$_WeatherRepositoryUiState value,
          $Res Function(_$_WeatherRepositoryUiState) then) =
      __$$_WeatherRepositoryUiStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String weatherCondition,
      int maxTemperature,
      int minTemperature,
      String errorMessage});
}

/// @nodoc
class __$$_WeatherRepositoryUiStateCopyWithImpl<$Res>
    extends _$WeatherRepositoryUiStateCopyWithImpl<$Res,
        _$_WeatherRepositoryUiState>
    implements _$$_WeatherRepositoryUiStateCopyWith<$Res> {
  __$$_WeatherRepositoryUiStateCopyWithImpl(_$_WeatherRepositoryUiState _value,
      $Res Function(_$_WeatherRepositoryUiState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherCondition = null,
    Object? maxTemperature = null,
    Object? minTemperature = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_WeatherRepositoryUiState(
      weatherCondition: null == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as String,
      maxTemperature: null == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      minTemperature: null == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeatherRepositoryUiState implements _WeatherRepositoryUiState {
  const _$_WeatherRepositoryUiState(
      {this.weatherCondition = '',
      this.maxTemperature = 0,
      this.minTemperature = 0,
      this.errorMessage = ''});

  @override
  @JsonKey()
  final String weatherCondition;
  @override
  @JsonKey()
  final int maxTemperature;
  @override
  @JsonKey()
  final int minTemperature;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'WeatherRepositoryUiState(weatherCondition: $weatherCondition, maxTemperature: $maxTemperature, minTemperature: $minTemperature, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherRepositoryUiState &&
            (identical(other.weatherCondition, weatherCondition) ||
                other.weatherCondition == weatherCondition) &&
            (identical(other.maxTemperature, maxTemperature) ||
                other.maxTemperature == maxTemperature) &&
            (identical(other.minTemperature, minTemperature) ||
                other.minTemperature == minTemperature) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherCondition, maxTemperature,
      minTemperature, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherRepositoryUiStateCopyWith<_$_WeatherRepositoryUiState>
      get copyWith => __$$_WeatherRepositoryUiStateCopyWithImpl<
          _$_WeatherRepositoryUiState>(this, _$identity);
}

abstract class _WeatherRepositoryUiState implements WeatherRepositoryUiState {
  const factory _WeatherRepositoryUiState(
      {final String weatherCondition,
      final int maxTemperature,
      final int minTemperature,
      final String errorMessage}) = _$_WeatherRepositoryUiState;

  @override
  String get weatherCondition;
  @override
  int get maxTemperature;
  @override
  int get minTemperature;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherRepositoryUiStateCopyWith<_$_WeatherRepositoryUiState>
      get copyWith => throw _privateConstructorUsedError;
}
