// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misskey_api_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$misskeyApiNotifierHash() =>
    r'e97039b622f97fe64a986bd9b41a8d25e7979b55';

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

abstract class _$MisskeyApiNotifier
    extends BuildlessAutoDisposeNotifier<MisskeyApi> {
  late final String baseUrl;

  MisskeyApi build(
    String baseUrl,
  );
}

/// See also [MisskeyApiNotifier].
@ProviderFor(MisskeyApiNotifier)
const misskeyApiNotifierProvider = MisskeyApiNotifierFamily();

/// See also [MisskeyApiNotifier].
class MisskeyApiNotifierFamily extends Family<MisskeyApi> {
  /// See also [MisskeyApiNotifier].
  const MisskeyApiNotifierFamily();

  /// See also [MisskeyApiNotifier].
  MisskeyApiNotifierProvider call(
    String baseUrl,
  ) {
    return MisskeyApiNotifierProvider(
      baseUrl,
    );
  }

  @override
  MisskeyApiNotifierProvider getProviderOverride(
    covariant MisskeyApiNotifierProvider provider,
  ) {
    return call(
      provider.baseUrl,
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
  String? get name => r'misskeyApiNotifierProvider';
}

/// See also [MisskeyApiNotifier].
class MisskeyApiNotifierProvider
    extends AutoDisposeNotifierProviderImpl<MisskeyApiNotifier, MisskeyApi> {
  /// See also [MisskeyApiNotifier].
  MisskeyApiNotifierProvider(
    this.baseUrl,
  ) : super.internal(
          () => MisskeyApiNotifier()..baseUrl = baseUrl,
          from: misskeyApiNotifierProvider,
          name: r'misskeyApiNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$misskeyApiNotifierHash,
          dependencies: MisskeyApiNotifierFamily._dependencies,
          allTransitiveDependencies:
              MisskeyApiNotifierFamily._allTransitiveDependencies,
        );

  final String baseUrl;

  @override
  bool operator ==(Object other) {
    return other is MisskeyApiNotifierProvider && other.baseUrl == baseUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, baseUrl.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  MisskeyApi runNotifierBuild(
    covariant MisskeyApiNotifier notifier,
  ) {
    return notifier.build(
      baseUrl,
    );
  }
}

String _$miAuthTokenNotifierHash() =>
    r'42b17a0c9bd7a9754907faac2fd94ce9260fe9a4';

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

String _$misskeyMetaNotifierHash() =>
    r'7f0813f79aa6e79153d40fa1810b89e229cf4c0e';

/// See also [MisskeyMetaNotifier].
@ProviderFor(MisskeyMetaNotifier)
final misskeyMetaNotifierProvider = AutoDisposeAsyncNotifierProvider<
    MisskeyMetaNotifier, MetaResponse>.internal(
  MisskeyMetaNotifier.new,
  name: r'misskeyMetaNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$misskeyMetaNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MisskeyMetaNotifier = AutoDisposeAsyncNotifier<MetaResponse>;
String _$misskeyTimelineNotifierHash() =>
    r'f4b3365f4553c4416585ccd734eef5358aab8187';

/// See also [MisskeyTimelineNotifier].
@ProviderFor(MisskeyTimelineNotifier)
final misskeyTimelineNotifierProvider = AutoDisposeAsyncNotifierProvider<
    MisskeyTimelineNotifier, List<Note>>.internal(
  MisskeyTimelineNotifier.new,
  name: r'misskeyTimelineNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$misskeyTimelineNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MisskeyTimelineNotifier = AutoDisposeAsyncNotifier<List<Note>>;
String _$misskeyMyProfileNotifierHash() =>
    r'6d3e3fc793c345aa8519f1d19a085ce021c313c0';

/// See also [MisskeyMyProfileNotifier].
@ProviderFor(MisskeyMyProfileNotifier)
final misskeyMyProfileNotifierProvider =
    AutoDisposeAsyncNotifierProvider<MisskeyMyProfileNotifier, User>.internal(
  MisskeyMyProfileNotifier.new,
  name: r'misskeyMyProfileNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$misskeyMyProfileNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MisskeyMyProfileNotifier = AutoDisposeAsyncNotifier<User>;
String _$misskeyEmojisNotifierHash() =>
    r'4ef402731b8c4f1a8459997506f28862386c2e05';

/// See also [MisskeyEmojisNotifier].
@ProviderFor(MisskeyEmojisNotifier)
final misskeyEmojisNotifierProvider = AutoDisposeAsyncNotifierProvider<
    MisskeyEmojisNotifier, List<Emoji>>.internal(
  MisskeyEmojisNotifier.new,
  name: r'misskeyEmojisNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$misskeyEmojisNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MisskeyEmojisNotifier = AutoDisposeAsyncNotifier<List<Emoji>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
