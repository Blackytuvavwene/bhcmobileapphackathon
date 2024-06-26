import 'dart:convert';

import 'package:appwrite/appwrite.dart';
import 'package:bhcmobileapp/src/src.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// import generated code
part 'property_controllers.g.dart';

@riverpod
class PropertiesNotifier extends _$PropertiesNotifier {
  @override
  Future<List<Property>> build() async {
    // set loading
    state = const AsyncLoading();
    // get properties

    // watch database provider
    final database = ref.watch(appwriteDatabaseProvider);

    // get properties
    final propertiesDocumentsList = await database.listDocuments(
      databaseId: AppwriteEndpointConstant.databaseID,
      collectionId: AppwriteEndpointConstant.propertiesCollectionID,
    );

    // debug log
    debugPrint('Properties: $propertiesDocumentsList');

    // map documents to properties
    final properties = propertiesDocumentsList.documents
        .map((e) => Property.fromJson(e.data))
        .toList();

    return properties;
  }

  // get properties
  Future<List<Property>> getProperties() async {
    return await build();
  }

  // get property based on query
  Future<AsyncValue<List<Property>>> getPropertiesByQuery(
      {required String query}) async {
    state = const AsyncLoading();

    // search properties
    return state = await AsyncValue.guard(() async {
      // get database provider
      final database = ref.watch(appwriteDatabaseProvider);
      // get properties
      final propertiesDocumentsList = await database.listDocuments(
        databaseId: AppwriteEndpointConstant.databaseID,
        collectionId: AppwriteEndpointConstant.propertiesCollectionID,
        queries: [
          Query.search('name', query),
          Query.search('location', query),
          Query.search('description', query),
        ],
      );
      // debug log
      debugPrint('Properties search result: $propertiesDocumentsList');
      // map documents to properties
      final properties = propertiesDocumentsList.documents
          .map((e) => Property.fromJson(e.data))
          .toList();
      return properties;
    });
  }
}

// property notifier
@riverpod
class PropertyNotifier extends _$PropertyNotifier {
  @override
  Future<Property> build(String propertyID) async {
    state = const AsyncLoading();
    // get property
    final propertyDocument =
        await ref.watch(appwriteDatabaseProvider).getDocument(
              databaseId: AppwriteEndpointConstant.databaseID,
              collectionId: AppwriteEndpointConstant.propertiesCollectionID,
              documentId: propertyID,
            );
    // debug log
    debugPrint('Property: $propertyDocument');
    // map document to property
    final property = Property.fromJson(propertyDocument.data);
    return property;
  }
}

@riverpod
class PropertiesController extends _$PropertiesController {
  @override
  Future<List<Property>> build() async {
    state = const AsyncLoading();

    // get properties

    final response =
        await get(Uri.parse('${ApiEndpoint.endpoint}/property'), headers: {
      'Content-Type': 'application/json',
    });

    print('Properties from backend: ${response.body}');

    // check statusCode
    if (response.statusCode != 200) {
      throw response.body;
    }

    // print response
    print(response.body);

    final json = jsonDecode(response.body) as Map<String, dynamic>;

    final List propertyList = json['docs'];

    final properties = propertyList.map((e) => Property.fromJson(e)).toList();
    return properties;
  }
}

@riverpod
class PropertyController extends _$PropertyController {
  @override
  Future<Property> build({
    required String propertyID,
  }) async {
    final response = await get(
        Uri.parse('${ApiEndpoint.endpoint}/property/$propertyID'),
        headers: {
          'Content-Type': 'application/json',
        });

    print('Properties from backend: ${response.body}');

    final property = Property.fromJson(jsonDecode(response.body));

    return property;
  }
}
