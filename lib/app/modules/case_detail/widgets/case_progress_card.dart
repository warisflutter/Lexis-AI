import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/case_detail_controller.dart';

class CaseProgressCard extends GetView<CaseDetailController> {
  const CaseProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Container(
        margin: const EdgeInsets.symmetric(horizontal: 18),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xff26212E),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.white.withOpacity(.08),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [

                Text(
                  "CASE VELOCITY",
                  style: TextStyle(
                    color: Colors.white.withOpacity(.65),
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),

                const Spacer(),

                Text(
                  controller.progressPercent.value,
                  style: const TextStyle(
                    color: Color(0xffC37BFF),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: LinearProgressIndicator(
                value: controller.progress.value,
                minHeight: 7,
                backgroundColor: Colors.white10,
                valueColor: const AlwaysStoppedAnimation(
                  Color(0xffC37BFF),
                ),
              ),
            ),

            const SizedBox(height: 14),

            Row(
              children: [

                const Icon(
                  Icons.bolt_rounded,
                  color: Color(0xffC37BFF),
                  size: 17,
                ),

                const SizedBox(width: 6),

                Expanded(
                  child: Text(
                    controller.progressStatus.value,
                    style: TextStyle(
                      color: Colors.white.withOpacity(.75),
                      fontSize: 12,
                    ),
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