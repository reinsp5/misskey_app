import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:misskey_client/service/auth_service.dart';
import 'package:misskey_client/view/account/my_profile_page.dart';
import 'package:misskey_client/view/auth_page.dart';
import 'package:misskey_client/view/callback_page.dart';
import 'package:misskey_client/view/home_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_state.g.dart';

@riverpod
class AppRouterNotifier extends _$AppRouterNotifier {
  @override
  GoRouter build() {
    final auth = ref.watch(authServiceProvider);
    return GoRouter(
      initialLocation: '/',
      routes: <RouteBase>[
        // ホーム画面
        GoRoute(
          path: '/',
          builder: (context, state) {
            return const HomePage();
          },
          redirect: (context, state) async {
            final token = await auth.getToken();
            // 認証未済の場合は認証画面へリダイレクト
            if (token == null) {
              debugPrint('tokenがnull：$token');
              return '/auth';
            }
            return null;
          },
        ),
        // 認証画面
        GoRoute(
          path: '/auth',
          builder: (context, state) {
            return const AuthPage();
          },
        ),
        // 認証コールバック画面
        GoRoute(
          path: '/callback',
          builder: (context, state) {
            final session = state.queryParameters['session'] ?? '';
            debugPrint('session: $session');
            return CallbackPage(
              sessionId: session,
            );
          },
        ),
        GoRoute(
          path: '/mypage',
          builder: (context, state) {
            return const MyProfilePage();
          },
        ),
      ],
    );
  }
}
