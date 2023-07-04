import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  Future<void> saveToken({required String? token}) async {
    const storage = FlutterSecureStorage();
    await storage.write(key: 'token', value: token ?? '');
  }

  Future<String?> getToken() async {
    const storage = FlutterSecureStorage();
    return await storage.read(key: 'token');
  }
}

final authServiceProvider = Provider((ref) {
  return AuthService();
});
