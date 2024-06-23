import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../src.dart';

part "app_router.g.dart";

// define our app routes
class AppRoutes {
  // home
  static const AppRouteModel home = AppRouteModel(
    path: '/',
    name: 'Home',
  );

  // auth
  static const AppRouteModel auth = AppRouteModel(
    path: '/auth',
    name: 'Auth',
  );

  // sign up
  static const AppRouteModel signup = AppRouteModel(
    path: '/signup',
    name: 'Sign Up',
  );

  // sign in
  static const AppRouteModel signin = AppRouteModel(
    path: '/signin',
    name: 'Sign In',
  );

  // welcome page
  static const AppRouteModel welcome = AppRouteModel(
    path: '/welcome',
    name: 'Welcome',
  );

  // help page
  static const AppRouteModel help = AppRouteModel(
    path: '/help',
    name: 'Help',
  );

  // profile page
  static const AppRouteModel profile = AppRouteModel(
    path: '/profile',
    name: 'Profile',
  );
}

// define our app router provider for the pages in the app
@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(
    initialLocation: AppRoutes.welcome.path,
    debugLogDiagnostics: true,
    routes: [
      // add welcome page
      GoRoute(
        path: AppRoutes.welcome.path,
        name: AppRoutes.welcome.name,
        builder: (context, state) {
          return const WelcomePage();
        },
      ),
      // add auth routes
      ShellRoute(
        builder: (context, state, child) {
          return AuthPageShell(
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: AppRoutes.signin.path,
            name: AppRoutes.signin.name,
            builder: (context, state) {
              return const SignInPage();
            },
          ),
          GoRoute(
            path: AppRoutes.signup.path,
            name: AppRoutes.signup.name,
            builder: (context, state) {
              return const SignUpPage();
            },
          ),
        ],
      ),
      // add home page as shell
      ShellRoute(
        builder: (context, state, child) {
          return HomeShell(
            child: child,
          );
        },
        routes: [
          // add home page
          GoRoute(
            path: AppRoutes.home.path,
            name: AppRoutes.home.name,
            builder: (context, state) {
              return const HomePage();
            },
          ),
          // add help page
          GoRoute(
            path: AppRoutes.help.path,
            name: AppRoutes.help.name,
            builder: (context, state) {
              return const HelpPage();
            },
          ),
          // add profile page
          GoRoute(
            path: AppRoutes.profile.path,
            name: AppRoutes.profile.name,
            builder: (context, state) {
              return const ProfilePage();
            },
          ),
        ],
      ),
    ],
  );
}
