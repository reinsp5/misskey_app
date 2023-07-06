import 'package:misskey_client/models/auth/check_auth_response.dart';
import 'package:misskey_client/service/misskey_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'misskey_api_state.g.dart';

@riverpod
class MisskeyApiNotifier extends _$MisskeyApiNotifier {
  @override
  MisskeyApiFactory build() {
    return MisskeyApiFactory();
  }
}

@riverpod
class MiAuthTokenNotifier extends _$MiAuthTokenNotifier {
  @override
  Future<CheckAuthResponse> build(String token) {
    return MisskeyApiFactory().create('https://misskey.io').checkAuth(token);
  }
}
