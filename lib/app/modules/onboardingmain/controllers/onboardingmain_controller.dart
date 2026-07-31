import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingMainController extends GetxController {

  final PageController pageController = PageController();

  RxInt currentPage = 0.obs;

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void nextPage() {
    if (currentPage.value < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Go Login/Home
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}