import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lexis_ai/app/routes/app_pages.dart';

class RegisterController extends GetxController {

  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final selectedRole = 0.obs; // 0 Lawyer , 1 Client
  final agreeTerms = false.obs;

  void selectRole(int index) {
    selectedRole.value = index;
  }

  void toggleTerms(bool? value) {
    agreeTerms.value = value ?? false;
  }

  void register() {

    // if (!agreeTerms.value) {
    //   Get.snackbar(
    //     "Terms Required",
    //     "Please accept Terms & Conditions.",
    //   );
    //   return;
    // }
    //
    // if (passwordController.text != confirmPasswordController.text) {
    //   Get.snackbar(
    //     "Password",
    //     "Passwords do not match.",
    //   );
    //   return;
    // }

    // Registration Success
    Get.offNamed(Routes.HOME);

  }

  @override
  void onClose() {
    fullNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}