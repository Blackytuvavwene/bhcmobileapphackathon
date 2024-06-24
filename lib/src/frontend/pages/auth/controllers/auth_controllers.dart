import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:bhcmobileapp/src/src.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// import generated code
part 'auth_controllers.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  Future<User?> build() async {
    // get user
    final user = ref.watch(getCurrentUserProvider).value;
    // debug log session
    debugPrint('Auth session: $user');
    return user;
  }

  // try to login with email and password
  Future<AsyncValue<User?>> login({
    required String email,
    required String password,
  }) async {
    final account = ref.watch(appwriteAccountProvider);
    // set state to loading
    state = const AsyncValue.loading();

    return state = await AsyncValue.guard(() async {
      // login
      await account.createEmailPasswordSession(
          email: email, password: password);

      // get user
      final user = await account.get();
      // debug log session
      debugPrint('Auth session: $user');
      return user;
    });
  }

  // try to signup with email and password
  Future<AsyncValue<User?>> signup({
    required String email,
    required String password,
    required String name,
  }) async {
    final account = ref.watch(appwriteAccountProvider);
    // set state to loading
    state = const AsyncValue.loading();

    return state = await AsyncValue.guard(() async {
      // signup
      await account.create(
        userId: ID.unique(),
        email: email,
        password: password,
        name: name,
      );
      // login user
      await account.createEmailPasswordSession(
        email: email,
        password: password,
      );

      // get user
      final user = await account.get();
      // debug log session
      debugPrint('Auth session: $user');
      return user;
    });
  }

  // try to logout
  Future<void> logout() async {
    final account = ref.watch(appwriteAccountProvider);
    await account.deleteSession(sessionId: 'current');
  }
}
