import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/hire_lawyer_controller.dart';

class LawyerEducation extends GetView<HireLawyerController> {
  const LawyerEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xff2B1839),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Obx(
            () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Professional Background",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            ...controller.education.map((item) {

              return Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: const Color(0xff8F6BFF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.school,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(width: 15),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            item["title"]!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),

                          const SizedBox(height: 6),

                          Text(
                            item["subtitle"]!,
                            style: TextStyle(
                              color: Colors.white.withOpacity(.65),
                              height: 1.5,
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              );
            }),

          ],
        ),
      ),
    );
  }
}