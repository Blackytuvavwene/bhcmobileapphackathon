import 'package:appwrite/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:appwrite/appwrite.dart' as appwrite;
import 'package:riverpod_annotation/riverpod_annotation.dart';

// import generated code
part 'appwrite_endpoint.g.dart';

// String endpointFromEnv = dotenv.get('APPWRITE_ENDPOINT');
class AppwriteEndpointConstant {
  static String endpoint = dotenv.get('APPWRITE_ENDPOINT');
  static String projectID = dotenv.get('APPWRITE_PROJECT_ID');
}

// provider for appwrite client
final appwriteClientProvider = Provider<appwrite.Client>((ref) {
  debugPrint('Appwrite projectID: ${AppwriteEndpointConstant.projectID}');
  final client = appwrite.Client()
      .setEndpoint(AppwriteEndpointConstant.endpoint)
      .setProject(AppwriteEndpointConstant.projectID)
      .setSelfSigned();

  // debug log client
  debugPrint('Appwrite client: ${client.endPoint}');
  return client;
});

// appwrite account provider
final appwriteAccountProvider = Provider<appwrite.Account>((ref) {
  debugPrint('Appwrite projectID: ${AppwriteEndpointConstant.projectID}');
  return appwrite.Account(ref.watch(appwriteClientProvider));
});

// appwrite storage provider
final appwriteStorageProvider = Provider<appwrite.Storage>((ref) {
  return appwrite.Storage(ref.watch(appwriteClientProvider));
});

// appwrite database provider
final appwriteDatabaseProvider = Provider<appwrite.Databases>((ref) {
  return appwrite.Databases(ref.watch(appwriteClientProvider));
});

@riverpod
Future<User> getCurrentUser(GetCurrentUserRef ref) {
  // debugPrint('Appwrite endpoint: ${AppwriteEndpointConstant.endpoint}');
  final account = ref.watch(appwriteAccountProvider);

  // get user
  final user = account.get();

  // debug log session
  debugPrint('Auth session: $user');
  return user;
}
