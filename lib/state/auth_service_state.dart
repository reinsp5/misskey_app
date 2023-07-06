import 'package:misskey_client/service/auth_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_service_state.g.dart';

@riverpod
class AuthServiceNotifier extends _$AuthServiceNotifier {
  @override
  AuthService build() {
    return AuthService();
  }
}
