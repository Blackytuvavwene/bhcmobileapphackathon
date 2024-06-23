import 'package:bhcmobileapp/src/src.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthPageShell extends HookConsumerWidget {
  const AuthPageShell({
    super.key,
    required this.child,
  });

  // page to show here
  final Widget child;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: child,
    );
  }
}
