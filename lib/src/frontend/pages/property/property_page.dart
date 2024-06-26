import 'package:bhcmobileapp/src/frontend/controllers/controllers.dart';
import 'package:extended_image/extended_image.dart';
import 'package:extended_sliver/extended_sliver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PropertyPage extends HookConsumerWidget {
  const PropertyPage({
    super.key,
    required this.propertyId,
  });

  final String propertyId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final property =
        ref.watch(propertyControllerProvider(propertyID: propertyId));

    return Scaffold(
      body: SafeArea(
        child: property.when(data: (data) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: true,
                pinned: true,
                title: Text(data.name),
              ),
              SliverToBoxAdapter(
                child: ExtendedImage.network(
                  height: 45.h,
                  width: 100.w,
                  '${data.images![0].image!.url}',
                ),
              ),
              SliverFillRemaining(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(data.description),
                      Text(data.location.address),
                    ],
                  ),
                ),
              ),
            ],
          );
        }, error: (objec, error) {
          return const SizedBox(
            child: Text('Failed to fetch property details'),
          );
        }, loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }),
      ),
      bottomNavigationBar: ElevatedButton(
        child: const Text('Rent now'),
        onPressed: () {
          // TODO: Implement rent
        },
      ),
    );
  }
}
