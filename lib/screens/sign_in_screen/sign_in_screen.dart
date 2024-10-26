import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:prokoders_e_commerce/screens/sign_in_screen/controllers/sign_in_controller/sign_in_controller.dart';
import 'package:prokoders_e_commerce/screens/sign_in_screen/controllers/sign_in_controller/sign_in_screen_states.dart';
import 'package:prokoders_e_commerce/shared/components/feature_not_available_dialog.dart';
import 'package:prokoders_e_commerce/shared/components/main_logo_widget.dart';

import '../../shared/components/custom_elevated_button.dart';
import '../../shared/components/validated_text_form_filed.dart';
import '../../shared/constants/local_images.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final signInController = Get.put<SignInController>(SignInController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double spaceBetweenButtons = screenHeight * 0.01;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const MainLogoWidget(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(() {
                      return ValidatedTextField(
                          icon: Icons.mail,
                          controller: signInController
                              .userTextControllers.value.emailController,
                          validator: signInController
                              .userTextValidators.value.emailValidator,
                          errorText: 'email cannot be empty',
                          hintText: 'email');
                    }),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Obx(() {
                      return ValidatedTextField(
                          icon: Icons.lock,
                          controller: signInController
                              .userTextControllers.value.passwordController,
                          validator: signInController
                              .userTextValidators.value.passwordValidator,
                          errorText: 'password cannot be empty',
                          hintText: 'password');
                    }),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    MyElevatedButton(
                        disable: signInController.state is SignInLoadingState,
                        onPressed: () {
                          signInController.signInWithEmailAndPassword(
                              context: context);
                        },
                        backgroundColor: Colors.green,
                        text: 'Sign in with Email',
                        icon: FontAwesomeIcons.envelope),
                    SizedBox(height: spaceBetweenButtons),
                    MyElevatedButton(
                      disable: signInController.state is SignInLoadingState,
                      icon: FontAwesomeIcons.google,
                      onPressed: () {
                        featureNotAvailable(
                            context: context, feature: 'sign in with google');
                      },
                      backgroundColor: Colors.red,
                      text: 'Sign in with Google',
                    ),
                    SizedBox(height: spaceBetweenButtons),
                    MyElevatedButton(
                        disable: signInController.state is SignInLoadingState,
                        icon: FontAwesomeIcons.twitter,
                        onPressed: () {
                          featureNotAvailable(
                              context: context,
                              feature: 'sign in with twitter');
                        },
                        backgroundColor: Colors.lightBlue,
                        text: 'Sign in with Twitter'),
                    SizedBox(height: spaceBetweenButtons),
                    MyElevatedButton(
                        disable: signInController.state is SignInLoadingState,
                        onPressed: () {
                          featureNotAvailable(
                              context: context, feature: 'sign in with phone');
                        },
                        backgroundColor: Colors.black,
                        text: 'Sign in with Phone',
                        icon: FontAwesomeIcons.phone),
                  ],
                ),
                Column(
                  children: [
                    const Text('Don\'t have an accout?'),
                    TextButton(
                      onPressed: () {
                        Get.offAllNamed('/sign_up_screen');
                      },
                      child: const Text(
                        'sign up',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // Get.offAllNamed('/sign_up_screen');
                  },
                  child: const Text(
                    'privacy policy conditions',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
