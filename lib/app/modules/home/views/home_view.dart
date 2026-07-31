import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../chat/views/chat_view.dart';
import '../../dashboard/views/dashboard_view.dart';
import '../../dashboard/widget/bottom_nav.dart';
import '../../dashboard/widget/dashboard_header.dart';
import '../../find_lawyer/views/find_lawyer_view.dart';
import '../../lawyer_case/views/lawyer_case_view.dart';
import '../../profile/views/profile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());

    return Scaffold(
      backgroundColor: const Color(0xFF170022),

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),

        child: AppBar(
          backgroundColor: const Color(0xff21102D),

          elevation: 0,

          automaticallyImplyLeading: false,

          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18),

              bottomRight: Radius.circular(18),
            ),
          ),

          titleSpacing: 16,

          title: const DashboardHeader(),

          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),

            child: Container(height: 1, color: Colors.white.withOpacity(0.08)),
          ),
        ),
      ),

      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex.value,

          children: const [
            DashboardView(),

            FindLawyerView(),

            LawyerCaseView(),

            ChatView(),

            ProfileView(),
          ],
        ),
      ),

      bottomNavigationBar: Obx(
        () => BottomNav(
          selectedIndex: controller.currentIndex.value,

          onTap: (index) {
            controller.changeTab(index);
          },
        ),
      ),
    );
  }
}

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  void changeTab(int index) {
    currentIndex.value = index;
  }
}
