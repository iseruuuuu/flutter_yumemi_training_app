// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(WeatherCondition weatherCondition,
            String maxTemperature, String minTemperature)
        list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(WeatherCondition weatherCondition, String maxTemperature,
            String minTemperature)?
        list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(WeatherCondition weatherCondition, String maxTemperature,
            String minTemperature)?
        list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherScreenStateInitial value) initial,
    required TResult Function(WeatherScreenStateList value) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherScreenStateInitial value)? initial,
    TResult? Function(WeatherScreenStateList value)? list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherScreenStateInitial value)? initial,
    TResult Function(WeatherScreenStateList value)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherScreenStateCopyWith<$Res> {
  factory $WeatherScreenStateCopyWith(
          WeatherScreenState value, $Res Function(WeatherScreenState) then) =
      _$WeatherScreenStateCopyWithImpl<$Res, WeatherScreenState>;
}

/// @nodoc
class _$WeatherScreenStateCopyWithImpl<$Res, $Val extends WeatherScreenState>
    implements $WeatherScreenStateCopyWith<$Res> {
  _$WeatherScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WeatherScreenStateInitialImplCopyWith<$Res> {
  factory _$$WeatherScreenStateInitialImplCopyWith(
          _$WeatherScreenStateInitialImpl value,
          $Res Function(_$WeatherScreenStateInitialImpl) then) =
      __$$WeatherScreenStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherScreenStateInitialImplCopyWithImpl<$Res>
    extends _$WeatherScreenStateCopyWithImpl<$Res,
        _$WeatherScreenStateInitialImpl>
    implements _$$WeatherScreenStateInitialImplCopyWith<$Res> {
  __$$WeatherScreenStateInitialImplCopyWithImpl(
      _$WeatherScreenStateInitialImpl _value,
      $Res Function(_$WeatherScreenStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherScreenStateInitialImpl implements WeatherScreenStateInitial {
  const _$WeatherScreenStateInitialImpl();

  @override
  String toString() {
    return 'WeatherScreenState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherScreenStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(WeatherCondition weatherCondition,
            String maxTemperature, String minTemperature)
        list,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(WeatherCondition weatherCondition, String maxTemperature,
            String minTemperature)?
        list,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(WeatherCondition weatherCondition, String maxTemperature,
            String minTemperature)?
        list,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherScreenStateInitial value) initial,
    required TResult Function(WeatherScreenStateList value) list,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherScreenStateInitial value)? initial,
    TResult? Function(WeatherScreenStateList value)? list,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherScreenStateInitial value)? initial,
    TResult Function(WeatherScreenStateList value)? list,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WeatherScreenStateInitial implements WeatherScreenState {
  const factory WeatherScreenStateInitial() = _$WeatherScreenStateInitialImpl;
}

/// @nodoc
abstract class _$$WeatherScreenStateListImplCopyWith<$Res> {
  factory _$$WeatherScreenStateListImplCopyWith(
          _$WeatherScreenStateListImpl value,
          $Res Function(_$WeatherScreenStateListImpl) then) =
      __$$WeatherScreenStateListImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {WeatherCondition weatherCondition,
      String maxTemperature,
      String minTemperature});
}

/// @nodoc
class __$$WeatherScreenStateListImplCopyWithImpl<$Res>
    extends _$WeatherScreenStateCopyWithImpl<$Res, _$WeatherScreenStateListImpl>
    implements _$$WeatherScreenStateListImplCopyWith<$Res> {
  __$$WeatherScreenStateListImplCopyWithImpl(
      _$WeatherScreenStateListImpl _value,
      $Res Function(_$WeatherScreenStateListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherCondition = null,
    Object? maxTemperature = null,
    Object? minTemperature = null,
  }) {
    return _then(_$WeatherScreenStateListImpl(
      weatherCondition: null == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
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

class _$WeatherScreenStateListImpl implements WeatherScreenStateList {
  const _$WeatherScreenStateListImpl(
      {required this.weatherCondition,
      required this.maxTemperature,
      required this.minTemperature});

  @override
  final WeatherCondition weatherCondition;
  @override
  final String maxTemperature;
  @override
  final String minTemperature;

  @override
  String toString() {
    return 'WeatherScreenState.list(weatherCondition: $weatherCondition, maxTemperature: $maxTemperature, minTemperature: $minTemperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherScreenStateListImpl &&
            (identical(other.weatherCondition, weatherCondition) ||
                other.weatherCondition == weatherCondition) &&
            (identical(other.maxTemperature, maxTemperature) ||
                other.maxTemperature == maxTemperature) &&
            (identical(other.minTemperature, minTemperature) ||
                other.minTemperature == minTemperature));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, weatherCondition, maxTemperature, minTemperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherScreenStateListImplCopyWith<_$WeatherScreenStateListImpl>
      get copyWith => __$$WeatherScreenStateListImplCopyWithImpl<
          _$WeatherScreenStateListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(WeatherCondition weatherCondition,
            String maxTemperature, String minTemperature)
        list,
  }) {
    return list(weatherCondition, maxTemperature, minTemperature);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(WeatherCondition weatherCondition, String maxTemperature,
            String minTemperature)?
        list,
  }) {
    return list?.call(weatherCondition, maxTemperature, minTemperature);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(WeatherCondition weatherCondition, String maxTemperature,
            String minTemperature)?
        list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(weatherCondition, maxTemperature, minTemperature);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherScreenStateInitial value) initial,
    required TResult Function(WeatherScreenStateList value) list,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherScreenStateInitial value)? initial,
    TResult? Function(WeatherScreenStateList value)? list,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherScreenStateInitial value)? initial,
    TResult Function(WeatherScreenStateList value)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class WeatherScreenStateList implements WeatherScreenState {
  const factory WeatherScreenStateList(
      {required final WeatherCondition weatherCondition,
      required final String maxTemperature,
      required final String minTemperature}) = _$WeatherScreenStateListImpl;

  WeatherCondition get weatherCondition;
  String get maxTemperature;
  String get minTemperature;
  @JsonKey(ignore: true)
  _$$WeatherScreenStateListImplCopyWith<_$WeatherScreenStateListImpl>
      get copyWith => throw _privateConstructorUsedError;
}
