import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';
import '../widgets/profile_action_button.dart';
import '../widgets/profile_avatar.dart';
import '../widgets/profile_footer.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/profile_menu_section.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff170022),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              const SizedBox(height: 20),

              const ProfileAvatar(),

              const SizedBox(height: 20),

              const ProfileInfo(),

              const SizedBox(height: 25),

              const ProfileMenuSection(),

              const SizedBox(height: 30),

              ProfileActionButtons(
                onEdit: () {},
                onLogout: () {},
              ),

              const SizedBox(height: 25),

              const ProfileFooter(),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}