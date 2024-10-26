import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:prokoders_e_commerce/screens/sign_up_screen/controllers/sign_up_controller/sign_up_controller.dart';
import 'package:prokoders_e_commerce/shared/components/custom_elevated_button.dart';
import 'package:prokoders_e_commerce/shared/components/feature_not_available_dialog.dart';
import 'package:prokoders_e_commerce/shared/components/main_logo_widget.dart';

import '../../shared/components/validated_text_form_filed.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final signUpController = Get.put<SignUpController>(SignUpController());

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    double spaceBetweenTextFields = screenHeight * 0.01;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up'),
        centerTitle: false,
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MainLogoWidget(),
              SizedBox(
                height: spaceBetweenTextFields,
              ),
              ValidatedTextField(
                controller:
                    signUpController.userTextControllers.value.nameController,
                validator:
                    signUpController.userTextValidators.value.nameValidator,
                errorText: 'name cannot be empty',
                hintText: 'name',
                icon: Icons.person,
              ),
              SizedBox(
                height: spaceBetweenTextFields,
              ),
              ValidatedTextField(
                controller:
                    signUpController.userTextControllers.value.emailController,
                validator:
                    signUpController.userTextValidators.value.emailValidator,
                errorText: 'email cannot be empty',
                hintText: 'email',
                icon: Icons.mail,
              ),
              SizedBox(
                height: spaceBetweenTextFields,
              ),
              ValidatedTextField(
                controller: signUpController
                    .userTextControllers.value.passwordController,
                validator:
                    signUpController.userTextValidators.value.passwordValidator,
                errorText: 'password cannot be empty',
                hintText: 'password',
                icon: Icons.lock,
              ),
              SizedBox(
                height: spaceBetweenTextFields,
              ),
              ValidatedTextField(
                controller: signUpController
                    .userTextControllers.value.passwordConfirmationController,
                validator: signUpController
                    .userTextValidators.value.passwordConfirmationValidator,
                errorText: 'password confirmation cannot be empty',
                hintText: 'password confirmation',
                icon: Icons.lock,
              ),
              const Text(
                  'By pressing on "Create account", you accept the privacy policy conditions'),
              SizedBox(
                height: screenHeight * 0.005,
              ),
              MyElevatedButton(
                  onPressed: () {
                    signUpController.signUpWithEmailAndPassword(
                        context: context);
                  },
                  text: 'Create account',
                  icon: Icons.add_task),
              SizedBox(
                height: spaceBetweenTextFields,
              ),
              const Text('Alternatively, you can sign up with'),
              SizedBox(
                height: spaceBetweenTextFields,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.google),
                    onPressed: () {
                      featureNotAvailable(
                          context: context, feature: 'sign up with google');
                    },
                  ),
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.apple),
                    onPressed: () {
                      featureNotAvailable(
                          context: context, feature: 'sign up with apple');
                    },
                  ),
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.twitter),
                    onPressed: () {
                      featureNotAvailable(
                          context: context, feature: 'sign up with twitter');
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                      Get.offAllNamed('/sign_in_screen');
                    },
                    child: const Text('sign in'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
