import 'package:get/get.dart';

import '../controllers/lawyer_case_controller.dart';

class LawyerCaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LawyerCaseController>(
      () => LawyerCaseController(),
    );
  }
}
