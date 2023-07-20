import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:misskey_client/state/misskey_api_state.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(misskeyMyProfileNotifierProvider);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              image: user.when(
                data: (data) => DecorationImage(
                  image: NetworkImage(
                    data.bannerUrl ?? '',
                  ),
                  fit: BoxFit.cover,
                ),
                error: (e, s) => const DecorationImage(
                  image: NetworkImage(
                    '',
                  ),
                  fit: BoxFit.cover,
                ),
                loading: () => const DecorationImage(
                  image: NetworkImage(
                    '',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              color: Colors.blue,
            ),
            child: user.when(
              data: (data) => Stack(
                children: <Widget>[
                  // 黒のストロークテキスト
                  Text(
                    data.name ?? '',
                    style: TextStyle(
                      fontSize: 25,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = Colors.black,
                    ),
                  ),
                  // 白のテキスト
                  Text(
                    data.name ?? '',
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              error: (e, s) => const Text('エラーが発生しました。'),
              loading: () => const Text(''),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('タイムライン'),
            onTap: () => context.go('/'),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('マイページ'),
            onTap: () => context.go('/mypage'),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('設定'),
          ),
        ],
      ),
    );
  }
}
