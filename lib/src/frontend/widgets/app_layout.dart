import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppLayout extends HookConsumerWidget {
  const AppLayout({
    required this.mobile,
    required this.tablet,
    required this.desktop,
    super.key,
  });

  // define our different screen sizes
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Widget child = switch (ScreenType) {
      ScreenType.mobile => mobile,
      ScreenType.tablet => tablet,
      ScreenType.desktop => desktop,
      // TODO: Handle this case.
      _ => mobile
    };

    return child;
  }
}
