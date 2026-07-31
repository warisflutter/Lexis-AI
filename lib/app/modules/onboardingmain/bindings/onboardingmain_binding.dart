import 'package:get/get.dart';

import '../../onboarding1/controllers/onboarding1_controller.dart';
import '../../onboarding2/controllers/onboarding2_controller.dart';
import '../../onboarding3/controllers/onboarding3_controller.dart';
import '../controllers/onboardingmain_controller.dart';

class OnboardingMainBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<OnboardingMainController>(
          () => OnboardingMainController(),
    );

    Get.lazyPut<Onboarding1Controller>(
          () => Onboarding1Controller(),
    );

    Get.lazyPut<Onboarding2Controller>(
          () => Onboarding2Controller(),
    );

    Get.lazyPut<Onboarding3Controller>(
          () => Onboarding3Controller(),
    );
  }
}