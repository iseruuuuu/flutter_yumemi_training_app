// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'weather_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherRepositoryHash() => r'c5ad9673f5925a3b0f9f5cea69ab23d2499e60d9';

/// See also [weatherRepository].
@ProviderFor(weatherRepository)
final weatherRepositoryProvider =
    AutoDisposeProvider<WeatherRepository>.internal(
  weatherRepository,
  name: r'weatherRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weatherRepositoryHash,
  dependencies: <ProviderOrFamily>[weatherDataSourceProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    weatherDataSourceProvider,
    ...?weatherDataSourceProvider.allTransitiveDependencies
  },
);

typedef WeatherRepositoryRef = AutoDisposeProviderRef<WeatherRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
