import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:misskey_client/state/auth_service_state.dart';
import 'package:misskey_client/state/misskey_api_state.dart';
import 'package:misskey_client/widget/app_scaffold_widget.dart';

class CallbackPage extends ConsumerWidget {
  const CallbackPage({Key? key, this.sessionId = ''}) : super(key: key);

  final String sessionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final token = ref.watch(miAuthTokenNotifierProvider(sessionId));
    final screen = token.when(
      loading: () => const CircularProgressIndicator(),
      error: (e, s) {
        debugPrint('error: $e, $s');
        return Text('エラーが発生しました。$e: $s');
      },
      data: (token) {
        log('token: ${token.toJson()}');
        ref.read(authServiceNotifierProvider).saveToken(token: token.token);
        return Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: 30,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        '認証成功',
                        style: TextStyle(fontSize: 32),
                      ),
                      const SizedBox(height: 20),
                      Icon(
                        Icons.check_circle,
                        size: 128,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(height: 60),
                      const Text(
                        'おめでとうございます！\r\n認証に成功し、ログインが完了しました。下のボタンからタイムラインへ移動してください。',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 64,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/');
                    },
                    child: const Text('タイムラインへ移動'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
    return AppScaffold(
      title: '認証結果',
      body: screen,
    );
  }
}
