import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:misskey_client/state/misskey_api_state.dart';
import 'package:misskey_client/widget/app_scaffold_widget.dart';
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
    final meta = ref.watch(misskeyMetaNotifierProvider);
    return AppScaffold(
      title: "認証",
      body: meta.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => const Center(
          child: Text("エラーが発生しました。"),
        ),
        data: (data) => Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Image.network(
                '${data.iconUrl}',
                scale: 4.0,
              ),
              const SizedBox(height: 10),
              Text(
                data.name ?? '不明',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              HtmlWidget(
                data.description ?? '不明',
              ),
              Expanded(
                child: Container(),
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  child: const Text("認証する"),
                  onPressed: () {
                    final session = _generateSession();
                    final url = _getMiAuthUrl(
                      session: session,
                      name: 'misskey_flutter',
                      callback: 'misskey://reinsp5.com/callback',
                      permission: [
                        "read:account",
                        "write:account",
                        "write:notes"
                      ],
                    );

                    // MiAuthの認証画面（Webページ）へ遷移する
                    launchUrl(url, mode: LaunchMode.externalApplication);
                  },
                ),
              ),
            ],
          ),
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
