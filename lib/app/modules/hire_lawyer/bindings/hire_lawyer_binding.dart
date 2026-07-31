import 'package:get/get.dart';

import '../controllers/hire_lawyer_controller.dart';

class HireLawyerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HireLawyerController>(
      () => HireLawyerController(),
    );
  }
}
