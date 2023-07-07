import 'package:misskey_client/models/auth/check_auth_response.dart';
import 'package:misskey_client/models/meta/meta_response.dart';
import 'package:misskey_client/models/note/note.dart';
import 'package:misskey_client/models/timeline/timeline_request.dart';
import 'package:misskey_client/service/misskey_api.dart';
import 'package:misskey_client/state/auth_service_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'misskey_api_state.g.dart';

@riverpod
class MisskeyApiNotifier extends _$MisskeyApiNotifier {
  @override
  MisskeyApi build(String baseUrl) {
    return MisskeyApiFactory().create(baseUrl);
  }
}

@riverpod
class MiAuthTokenNotifier extends _$MiAuthTokenNotifier {
  @override
  Future<CheckAuthResponse> build(String token) {
    final misskeyApi =
        ref.read(misskeyApiNotifierProvider('https://misskey.io'));
    return misskeyApi.checkAuth(token);
  }
}

@riverpod
class MisskeyMetaNotifier extends _$MisskeyMetaNotifier {
  @override
  Future<MetaResponse> build() {
    final misskeyApi =
        ref.read(misskeyApiNotifierProvider('https://misskey.io'));
    return misskeyApi.getMeta();
  }
}

@riverpod
class MisskeyTimelineNotifier extends _$MisskeyTimelineNotifier {
  @override
  Future<List<Note>> build() async {
    final misskeyApi =
        ref.read(misskeyApiNotifierProvider('https://misskey.io'));
    final authService = ref.read(authServiceNotifierProvider);
    return misskeyApi.getHybridTimeline(TimelineRequest(
      i: await authService.getToken(),
    ));
  }

  void reload() {
    ref.refresh(misskeyTimelineNotifierProvider);
  }
}
