import 'package:flutter/material.dart';
import 'package:hoteltutorial/config/app_asset.dart';
import 'package:hoteltutorial/config/app_color.dart';
import 'package:hoteltutorial/widget/button_custom.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  final formkey = GlobalKey<FormState>();

  login(BuildContext context) {
    if (formkey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Form(
                key: formkey,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppAsset.logo,
                        fit: BoxFit.fitWidth,
                        width: 180,
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Sign In\nTo Your Account',
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: controllerEmail,
                        validator: (value) =>
                            value == '' ? "Don't be empty" : null,
                        decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            hintText: 'email address',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: AppColor.secondary,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: controllerPassword,
                        validator: (value) =>
                            value == '' ? "Don't be empty" : null,
                        obscureText: true,
                        decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            hintText: 'password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: AppColor.secondary,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ButtonCustom(
                        label: 'Login',
                        onTap: () => login(context),
                        isExpand: true,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        'Create new account',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
