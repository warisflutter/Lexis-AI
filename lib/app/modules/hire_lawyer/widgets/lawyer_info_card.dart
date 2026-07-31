import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/hire_lawyer_controller.dart';

class LawyerInfoCard extends GetView<HireLawyerController> {
  const LawyerInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Container(
        margin: const EdgeInsets.symmetric(horizontal: 18),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xff2B1839),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// LEFT SIDE
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${controller.lawyerName.value}, ",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: controller.degree.value,
                          style: const TextStyle(
                            color: Color(0xffA98BFF),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 18),

                  Row(
                    children: [

                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),

                      const SizedBox(width: 5),

                      Text(
                        controller.rating.value.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(width: 6),

                      Expanded(
                        child: Text(
                          "(${controller.totalReviews.value} Reviews)",
                          style: TextStyle(
                            color: Colors.white.withOpacity(.65),
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(width: 18),

            /// RIGHT SIDE
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                Text(
                  "Experience",
                  style: TextStyle(
                    color: Colors.white.withOpacity(.65),
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  "${controller.experience.value} Years",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}