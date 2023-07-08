import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_client/state/router_state.dart';

void main() async {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ルーターを取得する
    final router = ref.watch(appRouterNotifierProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Misskey App',
      theme: ThemeData(
        fontFamily: 'LINESeedJP',
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.lightGreenAccent.shade400,
        ),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
