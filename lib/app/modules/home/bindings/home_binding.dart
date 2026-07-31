import 'package:get/get.dart';

import '../../chat/controllers/chat_controller.dart';
import '../../dashboard/controllers/dashboard_controller.dart';
import '../../find_lawyer/controllers/find_lawyer_controller.dart';
import '../../profile/controllers/profile_controller.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());

    Get.lazyPut<DashboardController>(() => DashboardController());

    Get.lazyPut<FindLawyerController>(() => FindLawyerController());

    Get.lazyPut<ProfileController>(() => ProfileController());

    Get.lazyPut<ChatController>(() => ChatController());

  }
}
