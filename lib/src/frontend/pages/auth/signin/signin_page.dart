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
    // form global key
    final formKey = GlobalKey<FormState>();
    // text controllers
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    // check form value
    final isFormValid = useState(false);

    // show loading
    final isLoading = useState(false);

    // validate form
    void validateForm() {
      if (emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty &&
          isValidEmail(emailController.text.trim()) &&
          isValidPassword(passwordController.text.trim())) {
        isFormValid.value = true;
      } else {
        isFormValid.value = false;
      }
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
            // key: formKey,
            autovalidateMode: AutovalidateMode.always,
            onChanged: validateForm,
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      // check if email is valid
                      if (isValidEmail(value)) {
                        return null;
                      } else {
                        return 'Please enter a valid email';
                      }
                    },
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
                    validator: (value) {
                      // check if password is valid
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (isValidPassword(value)) {
                        return null;
                      } else {
                        return 'Password must contain atleast 8 characters, 1 uppercase, 1 lowercase, 1 number and 1 special character';
                      }
                    },
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
                    onPressed: isFormValid.value == true &&
                            isLoading.value == false
                        ? () async {
                            // TODO: implement sign in
                            try {
                              isLoading.value = true;

                              // show loading snack bar
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Signing in...'),
                                ),
                              );
                              // sign in user
                              await ref
                                  .read(authControllerProvider.notifier)
                                  .login(
                                    email: emailController.text.trim(),
                                    password: passwordController.text.trim(),
                                  );
                            } catch (e) {
                              // show snackbar
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    e.toString(),
                                  ),
                                ),
                              );
                            }

                            isLoading.value = false;
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
