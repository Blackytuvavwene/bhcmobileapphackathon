import 'package:bhcmobileapp/src/router/controllers/app_router_controllers.dart';
import 'package:bhcmobileapp/src/src.dart';
import 'package:extended_sliver/extended_sliver.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// a home shell
class HomeShell extends HookConsumerWidget {
  const HomeShell({
    super.key,
    required this.child,
  });

  // child of this shell
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // initialize our pages
    final pages = [
      const HomePage(),
      const HelpPage(),
      const ProfilePage(),
    ];

    // function to switch pages
    void onItemTapped(int index) {
      // set index of main route
      ref.read(mainRouteNotifierProvider.notifier).setIndex(index);

      // get route name
      final routeName = ref.read(nestedMainRoutesProvider)[index];

      // go to route
      context.go(routeName.path);
    }

    // watch the current index
    final currentIndex = ref.watch(mainRouteNotifierProvider);

    return Scaffold(
      body: SafeArea(
        child: child,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.help,
            ),
            label: 'Help',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
        onDestinationSelected: (value) {
          onItemTapped(value);
        },
      ),
    );
  }
}

// a responsive home layout
class HomePage extends HookConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // get the current logged in user
    final user = ref.watch(getCurrentUserProvider);
    // debug log session
    debugPrint('Home session: $user');

    // get properties
    final properties = ref.watch(propertiesNotifierProvider);
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: user.when(
              skipError: true,
              data: (data) => Text(data.name),
              error: (objec, error) {
                // debug log error and object
                debugPrint('Checking current user $objec ${error.toString()}');
                return const Text('Welcome');
              },
              loading: () {
                return const Text('Loading...');
              }),
        ),
        SliverPinnedToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 100.w,
              // height: 6.h,
              child: Form(
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        // TODO: Implement filter
                      },
                      icon: const Icon(
                        Icons.sort,
                      ),
                    ),
                    labelText: 'Username',
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ),
        ),
        properties.when(data: (data) {
          if (data.isEmpty) {
            return const SliverFillRemaining(
              child: Center(
                child: Text('No properties found'),
              ),
            );
          }
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Text(data[index].name);
              },
              childCount: data.length,
            ),
          );
        }, error: (objec, error) {
          return SliverFillRemaining(
            child: Text(error.toString()),
          );
        }, loading: () {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }),
      ],
    );
  }
}
