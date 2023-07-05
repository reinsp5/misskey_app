import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_client/service/auth_service.dart';
import 'package:misskey_client/service/misskey_api.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({Key? key, this.sessionId = ''}) : super(key: key);

  /// セッションID
  final String sessionId;

  /// 接続先をユーザーの任意で書き換えられるようにしたい場合は、
  /// TextFieldなどを使ってこの値を書き換えてください。
  final String baseUrl = "https://misskey.io";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (sessionId.isNotEmpty) {
      ref
          .read(misskeyApiFactoryProvider)
          .create(baseUrl)
          .checkAuth(sessionId)
          .then((value) async {
        // 取得したTokenを保存する
        await ref.read(authServiceProvider).saveToken(token: value.token);
      });
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "認証",
          style: TextStyle(
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: TextButton(
          child: const Text("認証する"),
          onPressed: () {
            final session = _generateSession();
            final url = _getMiAuthUrl(
              session: session,
              name: 'misskey_flutter',
              callback: 'misskey://reinsp5.com/callback',
              permission: ["read:account", "write:account", "write:notes"],
            );

            // MiAuthの認証画面（Webページ）へ遷移する
            launchUrl(url, mode: LaunchMode.externalApplication);
          },
        ),
      ),
    );
  }

  /// パラメーターを元に認証先のURLを生成する
  Uri _getMiAuthUrl({
    required String session,
    required String name,
    required String callback,
    required List<String> permission,
  }) {
    final uri = Uri(
        scheme: 'https',
        host: 'misskey.io',
        path: '/miauth/$session',
        queryParameters: {
          'name': name,
          'callback': callback,
          'permission': permission.join(','),
        });
    return uri;
  }

  /// セッションを生成する
  String _generateSession() {
    return const Uuid().v4();
  }
}
