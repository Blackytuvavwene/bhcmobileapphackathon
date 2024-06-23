import 'package:bhcmobileapp/src/src.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// import generated code
part 'app_router_controllers.g.dart';

// nested routes
final List<AppRouteModel> nestedMainRoutes = [
  AppRoutes.home,
  AppRoutes.help,
  AppRoutes.profile,
];

// nested main routes provider
final nestedMainRoutesProvider = Provider<List<AppRouteModel>>((ref) {
  return nestedMainRoutes;
});

// main route controller
@riverpod
class MainRouteNotifier extends _$MainRouteNotifier {
  @override
  int build() {
    return 0;
  }

  // set index of main route
  void setIndex(int index) {
    state = index;
  }
}
