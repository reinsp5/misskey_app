import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:misskey_client/view/auth_page.dart';
import 'package:misskey_client/view/callback_page.dart';
import 'package:misskey_client/view/home_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

// ルート定義
final _router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: '/auth',
      builder: (context, state) {
        return const AuthPage();
      },
    ),
    GoRoute(
        path: '/callback',
        builder: (context, state) {
          final session = state.queryParameters['session'] ?? '';
          return CallbackPage(
            sessionId: session,
          );
        }),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
      routerConfig: _router,
    );
  }
}
