// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'weather_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherScreenViewModelHash() =>
    r'07a476a55c9f86b82b1457d4eef5b0c38f626538';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$WeatherScreenViewModel
    extends BuildlessAutoDisposeNotifier<WeatherScreenState> {
  late final WeatherScreenState initState;

  WeatherScreenState build({
    WeatherScreenState initState = const WeatherScreenState.initial(),
  });
}

/// See also [WeatherScreenViewModel].
@ProviderFor(WeatherScreenViewModel)
const weatherScreenViewModelProvider = WeatherScreenViewModelFamily();

/// See also [WeatherScreenViewModel].
class WeatherScreenViewModelFamily extends Family<WeatherScreenState> {
  /// See also [WeatherScreenViewModel].
  const WeatherScreenViewModelFamily();

  /// See also [WeatherScreenViewModel].
  WeatherScreenViewModelProvider call({
    WeatherScreenState initState = const WeatherScreenState.initial(),
  }) {
    return WeatherScreenViewModelProvider(
      initState: initState,
    );
  }

  @override
  WeatherScreenViewModelProvider getProviderOverride(
    covariant WeatherScreenViewModelProvider provider,
  ) {
    return call(
      initState: provider.initState,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    weatherRepositoryProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    weatherRepositoryProvider,
    ...?weatherRepositoryProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'weatherScreenViewModelProvider';
}

/// See also [WeatherScreenViewModel].
class WeatherScreenViewModelProvider extends AutoDisposeNotifierProviderImpl<
    WeatherScreenViewModel, WeatherScreenState> {
  /// See also [WeatherScreenViewModel].
  WeatherScreenViewModelProvider({
    WeatherScreenState initState = const WeatherScreenState.initial(),
  }) : this._internal(
          () => WeatherScreenViewModel()..initState = initState,
          from: weatherScreenViewModelProvider,
          name: r'weatherScreenViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$weatherScreenViewModelHash,
          dependencies: WeatherScreenViewModelFamily._dependencies,
          allTransitiveDependencies:
              WeatherScreenViewModelFamily._allTransitiveDependencies,
          initState: initState,
        );

  WeatherScreenViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initState,
  }) : super.internal();

  final WeatherScreenState initState;

  @override
  WeatherScreenState runNotifierBuild(
    covariant WeatherScreenViewModel notifier,
  ) {
    return notifier.build(
      initState: initState,
    );
  }

  @override
  Override overrideWith(WeatherScreenViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: WeatherScreenViewModelProvider._internal(
        () => create()..initState = initState,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initState: initState,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<WeatherScreenViewModel, WeatherScreenState>
      createElement() {
    return _WeatherScreenViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherScreenViewModelProvider &&
        other.initState == initState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WeatherScreenViewModelRef
    on AutoDisposeNotifierProviderRef<WeatherScreenState> {
  /// The parameter `initState` of this provider.
  WeatherScreenState get initState;
}

class _WeatherScreenViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<WeatherScreenViewModel,
        WeatherScreenState> with WeatherScreenViewModelRef {
  _WeatherScreenViewModelProviderElement(super.provider);

  @override
  WeatherScreenState get initState =>
      (origin as WeatherScreenViewModelProvider).initState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
