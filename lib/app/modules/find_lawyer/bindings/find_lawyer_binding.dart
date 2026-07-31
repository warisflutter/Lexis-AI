import 'package:get/get.dart';

import '../controllers/find_lawyer_controller.dart';

class FindLawyerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FindLawyerController>(
      () => FindLawyerController(),
    );
  }
}
