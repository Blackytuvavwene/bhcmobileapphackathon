import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('Profile page'),
          pinned: true,
        ),
        SliverFillRemaining(
          hasScrollBody: true,
          child: Column(
            children: [],
          ),
        )
      ],
    );
  }
}
