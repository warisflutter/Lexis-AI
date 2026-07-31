import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../onboarding1/views/onboarding1_view.dart';
import '../../onboarding2/views/onboarding2_view.dart';
import '../../onboarding3/views/onboarding3_view.dart';
import '../controllers/onboardingmain_controller.dart';

class OnboardingMainView extends GetView<OnboardingMainController> {
  const OnboardingMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        onPageChanged: controller.onPageChanged,
        children: const [

          Onboarding1View(),
          Onboarding2View(),
          Onboarding3View(),

        ],
      ),
    );
  }
}