import 'package:flutter/material.dart';

class UserTextControllers {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();

  dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordController.dispose();
  }
}
