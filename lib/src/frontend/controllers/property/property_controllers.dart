import 'package:bhcmobileapp/src/src.dart';
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

    // return state = await AsyncValue.guard(() async {
    //   // watch database provider
    //   final database = ref.watch(appwriteDatabaseProvider);

    //   // get properties
    //   final properties = await database.listDocuments(
    //     databaseId: AppwriteDatabaseConstant.databaseID,
    //     collectionId: AppwriteDatabaseConstant.propertiesCollectionID,
    //   );
    // });
  }
}
