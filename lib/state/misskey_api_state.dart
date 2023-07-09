import 'dart:async';

import 'package:dio/dio.dart';
import 'package:misskey_client/models/auth/check_auth_response.dart';
import 'package:misskey_client/models/emoji/emoji.dart';
import 'package:misskey_client/models/meta/meta_response.dart';
import 'package:misskey_client/models/note/note.dart';
import 'package:misskey_client/models/timeline/timeline_request.dart';
import 'package:misskey_client/models/user/my_profile_request.dart';
import 'package:misskey_client/models/user/user.dart';
import 'package:misskey_client/service/misskey_api.dart';
import 'package:misskey_client/state/auth_service_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'misskey_api_state.g.dart';

@riverpod
class MisskeyApiNotifier extends _$MisskeyApiNotifier {
  @override
  MisskeyApi build(String baseUrl) {
    Dio dio = Dio();
    dio.options.headers['content-type'] = 'application/json';
    return MisskeyApi(dio, baseUrl: baseUrl);
  }
}

@riverpod
class MiAuthTokenNotifier extends _$MiAuthTokenNotifier {
  @override
  Future<CheckAuthResponse> build(String token) async {
    final misskeyApi =
        ref.read(misskeyApiNotifierProvider('https://misskey.io'));
    return misskeyApi.checkAuth(token, {});
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
  Timer? _timer = null;

  @override
  Future<List<Note>> build() async {
    final misskeyApi =
        ref.read(misskeyApiNotifierProvider('https://misskey.io'));
    final authService = ref.read(authServiceNotifierProvider);
    return misskeyApi.getHybridTimeline(TimelineRequest(
      i: await authService.getToken(),
    ));
  }

  void reload() async {
    final timeline = await ref
        .read(misskeyApiNotifierProvider('https://misskey.io'))
        .getHybridTimeline(
          TimelineRequest(
            i: await ref.read(authServiceNotifierProvider).getToken(),
          ),
        );
    final newTimeline = [
      ...timeline,
      ...state.value!,
    ].where((element) => element.text != null).toList();
    state = AsyncValue.data(newTimeline);
  }

  void reloadScheduler() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 30), (timer) async {
      reload();
    });
  }
}

@riverpod
class MisskeyMyProfileNotifier extends _$MisskeyMyProfileNotifier {
  @override
  Future<User> build() async {
    final misskeyApi =
        ref.read(misskeyApiNotifierProvider('https://misskey.io'));
    final authService = ref.read(authServiceNotifierProvider);
    return misskeyApi.getMyProfile(
      MyProfileRequest(
        i: await authService.getToken(),
      ),
    );
  }
}

@riverpod
class MisskeyEmojisNotifier extends _$MisskeyEmojisNotifier {
  @override
  Future<List<Emoji>> build() async {
    final misskeyApi =
        ref.read(misskeyApiNotifierProvider('https://misskey.io'));
    return misskeyApi.getEmojis();
  }
}