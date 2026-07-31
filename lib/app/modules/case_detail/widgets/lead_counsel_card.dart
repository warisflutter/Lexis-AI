import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/case_detail_controller.dart';

class LeadCounselCard extends GetView<CaseDetailController> {
  const LeadCounselCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Container(
        margin: const EdgeInsets.symmetric(horizontal: 18),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: const Color(0xff26212E),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.white.withOpacity(.08),
          ),
        ),
        child: Row(
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                controller.lawyerImage.value,
                width: 58,
                height: 58,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) {
                  return Container(
                    width: 58,
                    height: 58,
                    color: Colors.grey,
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  );
                },
              ),
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    controller.lawyerName.value,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    controller.lawyerRole.value,
                    style: const TextStyle(
                      color: Color(0xffC37BFF),
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    controller.lawyerRank.value,
                    style: TextStyle(
                      color: Colors.white.withOpacity(.60),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            // const Icon(
            //   Icons.arrow_forward_ios_rounded,
            //   color: Colors.white38,
            //   size: 16,
            // )
          ],
        ),
      ),
    );
  }
}