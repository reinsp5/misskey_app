import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_client/state/misskey_api_state.dart';

// ignore: must_be_immutable
class MiScaffold extends ConsumerWidget {
  MiScaffold({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  String title;
  Widget body;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(misskeyMyProfileNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.surface,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: body,
      drawer: Drawer(
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
            const ListTile(
              leading: Icon(Icons.message),
              title: Text('タイムライン'),
            ),
            const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('プロフィール'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('設定'),
            ),
          ],
        ),
      ),
    );
  }
}
