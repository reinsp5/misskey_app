import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:misskey_client/service/auth_service.dart';
import 'package:misskey_client/service/misskey_api.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';

class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _AuthScreenState();
  }
}

class _AuthScreenState extends ConsumerState<AuthScreen> {
  /// 接続先をユーザーの任意で書き換えられるようにしたい場合は、
  /// TextFieldなどを使ってこの値を書き換えてください。
  String baseUrl = "https://misskey.io";
  AuthStateType authStateType = AuthStateType.fixed;

  @override
  void dispose() {
    authStateType = AuthStateType.fixed;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("認証"),
      ),
      body: Center(
        child: TextButton(
          child: const Text("認証する"),
          onPressed: () {
            _startAuth();
          },
        ),
      ),
    );
  }

  /// 認証先のURLを生成してブラウザへ遷移する
  void _startAuth() async {
    final session = _generateSession();
    debugPrint(session);
    final url = _getUrl(
      session: session,
      baseUrl: baseUrl,
      appName: 'misskey_client',
      permissions: ["read:account", "write:account", "write:notes"],
      callback: 'misskey://',
    );

    debugPrint(url.toString());
    final result = await FlutterWebAuth2.authenticate(
        url: url.toString(), callbackUrlScheme: 'misskey');
    debugPrint(result);
    final sessionId = Uri.parse(result).queryParameters['session'];
    if (sessionId == null) {
      log('認証失敗');
      return;
    }
    final res = await ref
        .read(misskeyApiFactoryProvider)
        .create(baseUrl)
        .checkAuth(sessionId);
    debugPrint(res.toString());
    if (res.ok) {
      debugPrint('認証成功');
      // 取得したTokenを保存する
      await ref.read(authServiceProvider).saveToken(token: res.token);
      log('取得したToken: ${res.token}');
      setState(() {
        authStateType = AuthStateType.success;
      });
      return;
    }
    debugPrint('認証失敗');
  }

  /// ユーザーが認可するのを待ち受ける
  Future<void> _waitingAuth(
      {required String baseUrl, required String sessionId}) async {
    while (authStateType == AuthStateType.waiting4Approve) {
      final res = await ref
          .read(misskeyApiFactoryProvider)
          .create(baseUrl)
          .checkAuth(sessionId);
      if (res.ok) {
        log('認証成功');
        // 取得したTokenを保存する
        await ref.read(authServiceProvider).saveToken(token: res.token);
        log('取得したToken: ${res.token}');
        setState(() {
          authStateType = AuthStateType.success;
        });
        return;
      }
      log('認証待ち');
      // userが許可を押したのかをチェックする。
      await Future.delayed(const Duration(milliseconds: 3000));
    }
  }

  /// パラメーターを元に認証先のURLを生成する
  Uri _getUrl(
      {required String session,
      required String baseUrl,
      required String appName,
      required List<String> permissions,
      required String callback}) {
    String permission = '';
    for (int i = 0; i < permissions.length; i++) {
      if (i == 0) {
        permission = permissions[i];
      } else {
        permission = '$permission,${permissions[i]}';
      }
    }
    final uri = Uri(
        scheme: 'https',
        host: 'misskey.io',
        path: '/miauth/$session',
        queryParameters: {
          'session': session,
          'appSecret': 'hoge',
          'appName': appName,
          'permissions': permission,
          'callback': callback,
        });
    debugPrint(uri.toString());
    return uri;
  }

  /// セッションを生成する
  String _generateSession() {
    return const Uuid().v4();
  }
}

enum AuthStateType { fixed, waiting4Approve, success }
