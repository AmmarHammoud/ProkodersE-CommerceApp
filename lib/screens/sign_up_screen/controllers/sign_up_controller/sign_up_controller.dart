import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prokoders_e_commerce/screens/sign_up_screen/controllers/sign_up_controller/sign_up_screen_states.dart';
import 'package:prokoders_e_commerce/shared/constants/user_text_controllers.dart';
import 'package:prokoders_e_commerce/shared/constants/user_text_validators.dart';

import '../../../../shared/components/show_toast.dart';

class SignUpController extends GetxController {
  late Rx<UserTextControllers> userTextControllers;
  late Rx<UserTextValidators> userTextValidators;
  late Rx<SignUpScreenStates> state;

  @override
  void onInit() {
    userTextControllers = UserTextControllers().obs;
    userTextValidators = UserTextValidators().obs;
    state = SignUpScreenInitialState().obs;
    super.onInit();
  }

  ///A method to sign up with email and password
  signUpWithEmailAndPassword({required BuildContext context}) async {
    if (!userTextValidators.value.nameValidator.currentState!.validate() ||
        !userTextValidators.value.emailValidator.currentState!.validate() ||
        !userTextValidators.value.passwordValidator.currentState!.validate() ||
        !userTextValidators.value.passwordConfirmationValidator.currentState!
            .validate()) {
      return;
    }
    if (userTextControllers.value.passwordController.text !=
        userTextControllers.value.passwordConfirmationController.text) {
      showToast(
          context: context,
          text: 'password and password confirmation don\'t match',
          color: Colors.red);
      return;
    }

    //update state to loading
    state = SignUpScreenLoadingState().obs;

    try {
      //we shall call the API here
      debugPrint(
          'call api with name and email: ----------------- ${userTextControllers.value.nameController.text}, ${userTextControllers.value.emailController.text}');

      //navigate to home screen
      Get.offAllNamed('/onboarding');

      //update state to success
      state = SignUpScreenSuccessState().obs;
    } catch (e) {
      //update state to error
      state = SignUpScreenErrorState(e.toString()).obs;
      debugPrint('sign up error: ${e.toString()}');
    }
  }

  @override
  void dispose() {
    userTextControllers.value.dispose();
    super.dispose();
  }
}
