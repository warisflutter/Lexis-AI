import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class Onboarding2Controller extends GetxController
    with GetSingleTickerProviderStateMixin {

  late AnimationController animationController;
  late Animation<double> floatingAnimation;

  @override
  void onInit() {
    super.onInit();
    print("Controller Initialized");

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    floatingAnimation = Tween<double>(
      begin: -15,
      end: 15,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  void onSkip() {}

  void onNext() {}
}