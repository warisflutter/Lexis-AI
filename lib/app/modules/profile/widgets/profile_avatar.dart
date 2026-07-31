import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();

    return Obx(
          () => Stack(
        clipBehavior: Clip.none,
        children: [

          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xffC600FF),
                width: 2,
              ),
            ),
            child: CircleAvatar(
              radius: 46,
              backgroundColor: Colors.grey.shade900,
              backgroundImage:
              NetworkImage(controller.profileImage.value),
            ),
          ),

          Positioned(
            right: -2,
            bottom: 5,
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: const Color(0xffC600FF),
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xff170022),
                  width: 2,
                ),
              ),
              child: const Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}