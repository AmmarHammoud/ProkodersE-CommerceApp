import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prokoders_e_commerce/screens/sign_in_screen/controllers/sign_in_controller/sign_in_screen_states.dart';
import 'package:prokoders_e_commerce/shared/constants/user_text_controllers.dart';
import 'package:prokoders_e_commerce/shared/constants/user_text_validators.dart';

import '../../../../shared/components/show_toast.dart';

class SignInController extends GetxController {
  late Rx<UserTextControllers> userTextControllers;
  late Rx<UserTextValidators> userTextValidators;
  late Rx<SignInScreenStates> state;

  @override
  void onInit() {
    userTextControllers = UserTextControllers().obs;
    userTextValidators = UserTextValidators().obs;
    state = SignInInitialState().obs;
    super.onInit();
  }

  ///A method to sign in with email and password
  signInWithEmailAndPassword({required BuildContext context}) async {
    if (!userTextValidators.value.emailValidator.currentState!.validate() ||
        !userTextValidators.value.passwordValidator.currentState!.validate()) {
      return;
    }

    state = SignInLoadingState().obs;

    try {
      //We shall call the API here
      debugPrint(
          'call the api with email and password: ---------------- ${userTextControllers.value.emailController.text}, ${userTextControllers.value.passwordController.text}');

      //fill up the model

      //save user

      //navigate to home screen
      Get.offAllNamed('/onboarding');

      //show a toast
      showToast(
        context: context,
        text: 'signed in successfully',
        color: Colors.green,
      );

      //update to success state
      state = SignInSuccessState().obs;
    } catch (e, h) {
      //update to error state
      state = SignInErrorState(e.toString()).obs;
      debugPrint('sign in error: ${e.toString()}\n $h');
    }
  }

  @override
  void dispose() {
    userTextControllers.value.dispose();
    super.dispose();
  }
}
