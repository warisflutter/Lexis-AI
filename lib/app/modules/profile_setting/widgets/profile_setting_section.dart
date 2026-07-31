import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile_setting_controller.dart';
import 'profile_setting_switch_tile.dart';

class ProfileSettingSection extends GetView<ProfileSettingController> {
  const ProfileSettingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Preferences

          const Padding(
            padding: EdgeInsets.only(left: 5, bottom: 10, top: 18),
            child: Text(
              "PREFERENCES",
              style: TextStyle(
                color: Colors.white54,
                fontSize: 11,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: const Color(0xff24162F),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              children: [

                Obx(
                      () => ProfileSettingSwitchTile(
                    icon: Icons.notifications_active_outlined,
                    title: "Push Notifications",
                    value: controller.notificationEnabled.value,
                    onChanged: controller.toggleNotification,
                  ),
                ),

                const Divider(height: 1, color: Colors.white10),

                Obx(
                      () => ListTile(
                    leading: const Icon(
                      Icons.language,
                      color: Color(0xffB95CFF),
                    ),
                    title: const Text(
                      "Language",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        dropdownColor: const Color(0xff24162F),
                        value: controller.language.value,
                        iconEnabledColor: Colors.white,
                        style: const TextStyle(color: Colors.white),
                        items: const [
                          DropdownMenuItem(
                            value: "English",
                            child: Text("English"),
                          ),
                          DropdownMenuItem(
                            value: "Urdu",
                            child: Text("Urdu"),
                          ),
                        ],
                        onChanged: (value) {
                          if (value != null) {
                            controller.changeLanguage(value);
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 18),

          /// Privacy

          const Padding(
            padding: EdgeInsets.only(left: 5, bottom: 10),
            child: Text(
              "PRIVACY & SECURITY",
              style: TextStyle(
                color: Colors.white54,
                fontSize: 11,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: const Color(0xff24162F),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              children: [

                Obx(
                      () => ProfileSettingSwitchTile(
                    icon: Icons.lock_outline,
                    title: "Biometric Login",
                    subtitle: "Face ID & Touch ID enabled",
                    value: controller.biometricEnabled.value,
                    onChanged: controller.toggleBiometric,
                  ),
                ),

                const Divider(height: 1, color: Colors.white10),

                ListTile(
                  leading: const Icon(
                    Icons.security,
                    color: Color(0xffB95CFF),
                  ),
                  title: const Text(
                    "Security Audit",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.white54,
                  ),
                  onTap: () {},
                ),

                const Divider(height: 1, color: Colors.white10),

                ListTile(
                  leading: const Icon(
                    Icons.privacy_tip_outlined,
                    color: Color(0xffB95CFF),
                  ),
                  title: const Text(
                    "Privacy Policy",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.open_in_new,
                    size: 18,
                    color: Colors.white54,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}