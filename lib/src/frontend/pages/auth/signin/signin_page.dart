import 'package:bhcmobileapp/src/src.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // text controllers
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    // show loading
    final isLoading = useState(false);

    // listen to auth state
    ref.listen(authNotifierProvider, (previous, next) {
      previous?.when(data: (data) {
        // debug log session
        debugPrint('Checking current user $data');
        if (data != null) {
          context.go('/');
        }
      }, error: (error, stackTrace) {
        // debug log error and object
        debugPrint('Checking current user $error');
        return const Text('Welcome');
      }, loading: () {
        if (isLoading.value) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 20.h,
                ),
                content: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Signing in...'),
                  ],
                ),
              );
            },
          );
        }
      });
    });

    // validate form
    bool validateForm() {
      if (emailController.text.isEmpty) {
        return false;
      }
      if (passwordController.text.isEmpty) {
        return false;
      }
      return true;
    }

    // focus node
    final emailFocusNode = useFocusNode();
    final passwordFocusNode = useFocusNode();

    // // show dialog
    // if (isLoading.value) {
    //   showDialog(
    //     context: context,
    //     builder: (context) {
    //       return const AlertDialog(
    //         content: Column(
    //           children: [
    //             CircularProgressIndicator(),
    //             SizedBox(
    //               height: 10,
    //             ),
    //             Text('Signing in...'),
    //           ],
    //         ),
    //       );
    //     },
    //   );
    // }

    return Scaffold(
      // backgroundColor: Colors.amberAccent,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            onChanged: () {
              validateForm();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 40.h,
                    child: const Placeholder(
                      color: Colors.yellow,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextFormField(
                    controller: emailController,
                    focusNode: emailFocusNode,
                    textInputAction: TextInputAction.next,
                    onSaved: (newValue) {
                      // TODO: implement on saved
                      emailFocusNode.nextFocus();
                    },
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  TextFormField(
                    controller: passwordController,
                    focusNode: passwordFocusNode,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      child: const Text(
                        'Forgot password?',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {
                        // TODO: implement forgot password
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  ElevatedButton(
                    onPressed: validateForm()
                        ? () async {
                            // TODO: implement sign in
                            if (validateForm()) {
                              isLoading.value = true;
                              // sign in user
                              await ref
                                  .read(authNotifierProvider.notifier)
                                  .login(
                                    email: emailController.text.trim(),
                                    password: passwordController.text.trim(),
                                  );
                              isLoading.value = false;
                            }
                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        100.w,
                        6.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account?'),
                      InkWell(
                        child: const Text(
                          ' Sign Up',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        onTap: () {
                          // TODO: implement navigation to sign up page
                          context.push(AppRoutes.signup.path);
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
