import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.find<ProfileController>();

    return Obx(
          () => Column(
        children: [

          Text(
            controller.name.value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: const Color(0xff6F2CFF),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              controller.role.value,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
                fontSize: 11,
              ),
            ),
          ),
        ],
      ),
    );
  }
}