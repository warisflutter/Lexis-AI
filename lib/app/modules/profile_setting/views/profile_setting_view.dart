import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile_setting_controller.dart';
import '../widgets/profile_setting_footer.dart';
import '../widgets/profile_setting_header.dart';
import '../widgets/profile_setting_section.dart';
import '../widgets/profile_setting_tile.dart';

class ProfileSettingView extends GetView<ProfileSettingController> {
  const ProfileSettingView({super.key});

  @override
  Widget build(BuildContext context) {

    Get.put(ProfileSettingController());

    return Scaffold(
      backgroundColor: const Color(0xff170022),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              const ProfileSettingHeader(),

              const SizedBox(height: 25),

              const ProfileSettingTile(),

              const SizedBox(height: 25),


              const ProfileSettingSection(),

              const SizedBox(height: 25),

              ProfileSettingFooter(
                onLogout: () {
                  controller.logout();
                },
              ),

              const SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}