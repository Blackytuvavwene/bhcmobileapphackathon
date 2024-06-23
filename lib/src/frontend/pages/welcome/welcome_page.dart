import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../src.dart';

class WelcomePage extends HookConsumerWidget {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 5.h,
              ),
              // TODO: Add app logo here.
              const Placeholder(
                color: Colors.yellow,
                child: Text('Logo here'),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Find your perfect dream home',
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              ElevatedButton(
                onPressed: () {
                  // TODO: implement navigation to sign up page
                  context.go(AppRoutes.signin.path);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    side: BorderSide.none,
                    // minimumSize: Size(
                    //   100.w,
                    //   10.h,
                    // ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2))),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              ),
              // TODO: add a picture of a building
              Expanded(
                child: Placeholder(
                  color: Colors.yellow,
                  fallbackHeight: 100.h,
                  child: const Text('Picture of a building here'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
