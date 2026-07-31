import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final isPasswordHidden = true.obs;

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void login() {
    Get.snackbar(
      "Login",
      "Login button pressed",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void continueAsGuest() {
    Get.snackbar(
      "Guest",
      "Continue as Guest",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}