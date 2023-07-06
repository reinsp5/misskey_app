// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misskey_api_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$misskeyApiNotifierHash() =>
    r'f5a21128f442bdcc87205f5fd8017553b8096c2e';

/// See also [MisskeyApiNotifier].
@ProviderFor(MisskeyApiNotifier)
final misskeyApiNotifierProvider =
    AutoDisposeNotifierProvider<MisskeyApiNotifier, MisskeyApiFactory>.internal(
  MisskeyApiNotifier.new,
  name: r'misskeyApiNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$misskeyApiNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MisskeyApiNotifier = AutoDisposeNotifier<MisskeyApiFactory>;
String _$miAuthTokenNotifierHash() =>
    r'aa5526d137f9d0611694d6f730a2f1886fdb82f2';

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

abstract class _$MiAuthTokenNotifier
    extends BuildlessAutoDisposeAsyncNotifier<CheckAuthResponse> {
  late final String token;

  Future<CheckAuthResponse> build(
    String token,
  );
}

/// See also [MiAuthTokenNotifier].
@ProviderFor(MiAuthTokenNotifier)
const miAuthTokenNotifierProvider = MiAuthTokenNotifierFamily();

/// See also [MiAuthTokenNotifier].
class MiAuthTokenNotifierFamily extends Family<AsyncValue<CheckAuthResponse>> {
  /// See also [MiAuthTokenNotifier].
  const MiAuthTokenNotifierFamily();

  /// See also [MiAuthTokenNotifier].
  MiAuthTokenNotifierProvider call(
    String token,
  ) {
    return MiAuthTokenNotifierProvider(
      token,
    );
  }

  @override
  MiAuthTokenNotifierProvider getProviderOverride(
    covariant MiAuthTokenNotifierProvider provider,
  ) {
    return call(
      provider.token,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'miAuthTokenNotifierProvider';
}

/// See also [MiAuthTokenNotifier].
class MiAuthTokenNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    MiAuthTokenNotifier, CheckAuthResponse> {
  /// See also [MiAuthTokenNotifier].
  MiAuthTokenNotifierProvider(
    this.token,
  ) : super.internal(
          () => MiAuthTokenNotifier()..token = token,
          from: miAuthTokenNotifierProvider,
          name: r'miAuthTokenNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$miAuthTokenNotifierHash,
          dependencies: MiAuthTokenNotifierFamily._dependencies,
          allTransitiveDependencies:
              MiAuthTokenNotifierFamily._allTransitiveDependencies,
        );

  final String token;

  @override
  bool operator ==(Object other) {
    return other is MiAuthTokenNotifierProvider && other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<CheckAuthResponse> runNotifierBuild(
    covariant MiAuthTokenNotifier notifier,
  ) {
    return notifier.build(
      token,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
