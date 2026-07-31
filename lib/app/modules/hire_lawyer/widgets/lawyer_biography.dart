import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/hire_lawyer_controller.dart';

class LawyerBiography extends GetView<HireLawyerController> {
  const LawyerBiography({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 18),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: const Color(0xff2B1839),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Obx(
            () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                const Text(
                  "Biography",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Read More",
                    style: TextStyle(
                      color: Color(0xff9D7CFF),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 18),

            Text(
              controller.biography.value,
              style: TextStyle(
                color: Colors.white.withOpacity(.75),
                height: 1.7,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}