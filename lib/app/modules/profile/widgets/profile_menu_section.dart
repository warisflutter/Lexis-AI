import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import 'profile_menu_title.dart';

class ProfileMenuSection extends StatelessWidget {
  const ProfileMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        ProfileMenuTile(
          icon: Icons.person_outline,
          title: "Personal Information",
          subtitle: "Manage your identity and details",
          onTap: () {
            Get.toNamed(Routes.PROFILE_SETTING);
          },
        ),

        ProfileMenuTile(
          icon: Icons.folder_copy_outlined,
          title: "My Documents",
          subtitle: "Legal filings and case files",
          onTap: () {},
        ),

        ProfileMenuTile(
          icon: Icons.security_outlined,
          title: "Security",
          subtitle: "Password and biometric settings",
          onTap: () {
            Get.toNamed(Routes.PROFILE_SETTING);
          },
        ),
      ],
    );
  }
}