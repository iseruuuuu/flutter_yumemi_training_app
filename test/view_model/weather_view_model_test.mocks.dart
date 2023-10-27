// Mocks generated by Mockito 5.4.2 from annotations
// in flutter_training/test/view_model/weather_view_model_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:flutter_training/data_source/weather_data_source.dart' as _i2;
import 'package:flutter_training/model/result.dart' as _i3;
import 'package:flutter_training/model/weather_request.dart' as _i7;
import 'package:flutter_training/model/weather_result.dart' as _i6;
import 'package:flutter_training/repository/weather_repository.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeWeatherDataSource_0 extends _i1.SmartFake
    implements _i2.WeatherDataSource {
  _FakeWeatherDataSource_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResult_1<T, E> extends _i1.SmartFake implements _i3.Result<T, E> {
  _FakeResult_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [WeatherRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockWeatherRepository extends _i1.Mock implements _i4.WeatherRepository {
  MockWeatherRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.WeatherDataSource get weatherDataSource => (super.noSuchMethod(
        Invocation.getter(#weatherDataSource),
        returnValue: _FakeWeatherDataSource_0(
          this,
          Invocation.getter(#weatherDataSource),
        ),
      ) as _i2.WeatherDataSource);

  @override
  _i5.Future<_i3.Result<_i6.WeatherResult, String>> getWeather(
          _i7.WeatherRequest? weatherRequest) =>
      (super.noSuchMethod(
        Invocation.method(
          #getWeather,
          [weatherRequest],
        ),
        returnValue: _i5.Future<_i3.Result<_i6.WeatherResult, String>>.value(
            _FakeResult_1<_i6.WeatherResult, String>(
          this,
          Invocation.method(
            #getWeather,
            [weatherRequest],
          ),
        )),
      ) as _i5.Future<_i3.Result<_i6.WeatherResult, String>>);
}
