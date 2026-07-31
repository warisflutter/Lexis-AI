import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile_setting_controller.dart';

class ProfileSettingTile extends GetView<ProfileSettingController> {
  const ProfileSettingTile({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Padding(
            padding: EdgeInsets.only(left: 5,bottom: 10),
            child: Text(
              "ACCOUNT",
              style: TextStyle(
                color: Colors.white54,
                fontSize: 11,
                letterSpacing: 1.2,
                fontWeight: FontWeight.bold,
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

                ListTile(

                  leading: const Icon(
                    Icons.person_outline,
                    color: Color(0xffB95CFF),
                  ),

                  title: const Text(
                    "Personal Information",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  subtitle: const Text(
                    "Manage your legal credentials",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 11,
                    ),
                  ),

                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white38,
                    size: 16,
                  ),

                  onTap: () {},
                ),

                const Divider(
                  height: 1,
                  color: Colors.white10,
                ),

                Obx(
                      () => ListTile(

                    leading: const Icon(
                      Icons.email_outlined,
                      color: Color(0xffB95CFF),
                    ),

                    title: const Text(
                      "Email Address",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    subtitle: Text(
                      controller.email.value,
                      style: const TextStyle(
                        color: Colors.white54,
                        fontSize: 11,
                      ),
                    ),

                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white38,
                      size: 16,
                    ),

                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}