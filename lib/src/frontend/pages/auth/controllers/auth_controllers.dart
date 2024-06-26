import 'dart:convert';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:bhcmobileapp/src/src.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

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

@riverpod
class AuthController extends _$AuthController {
  @override
  Future build() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      // request current user using http
      final response = await http.get(
          Uri.parse(
            '${ApiEndpoint.endpoint}/users/me',
          ),
          headers: {
            'Content-Type': 'application/json',
            'credentials': 'include',
          });

      final json = jsonDecode(response.body) as Map<String, dynamic>;

      print(json.toString());

      return json;
    });
  }

  // login user
  Future<dynamic> login({
    required String email,
    required String password,
  }) async {
    // set state to loading
    state = const AsyncValue.loading();

    return state = await AsyncValue.guard(() async {
      // send a login request
      final response =
          await http.post(Uri.parse('${ApiEndpoint.endpoint}/users/login'),
              headers: {
                'Content-Type': 'application/json',
              },
              body: jsonEncode({
                'email': email,
                'password': password,
              }));

      // throw if status code is not 200
      if (response.statusCode != 200) {
        throw response.body;
      }

      // get the response
      final json = jsonDecode(response.body) as Map<String, dynamic>;

      // print the response
      print('Login response: ${json.toString()}');

      return json;
    });
  }

  // signup user
  Future<dynamic> signup({
    required String email,
    required String password,
    required String name,
  }) async {
    // set state to loading
    state = const AsyncValue.loading();

    return state = await AsyncValue.guard(() async {
      // send a signup request
      final response =
          await http.post(Uri.parse('${ApiEndpoint.endpoint}/users/create'),
              headers: {
                'Content-Type': 'application/json',
              },
              body: jsonEncode({
                'email': email,
                'password': password,
                'name': name,
                'role': 'tenant',
              }));

      // get the response
      final json = jsonDecode(response.body) as Map<String, dynamic>;

      // print the response
      print('Signup response: ${json.toString()}');

      return json;
    });
  }
}
