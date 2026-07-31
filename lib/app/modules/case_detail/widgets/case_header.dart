import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/case_detail_controller.dart';

class CaseHeader extends GetView<CaseDetailController> {
  const CaseHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Obx(
            () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Top App Bar
            // Row(
            //   children: [
            //
            //     GestureDetector(
            //       onTap: () => Get.back(),
            //       child: const Icon(
            //         Icons.arrow_back_ios_new_rounded,
            //         color: Colors.white,
            //         size: 18,
            //       ),
            //     ),
            //
            //     const SizedBox(width: 10),
            //
            //     const Icon(
            //       Icons.gavel_rounded,
            //       color: Color(0xffC37BFF),
            //       size: 20,
            //     ),
            //
            //     const SizedBox(width: 6),
            //
            //     const Text(
            //       "LexisAI",
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontWeight: FontWeight.bold,
            //         fontSize: 18,
            //       ),
            //     ),
            //
            //     const Spacer(),
            //
            //     Icon(
            //       Icons.notifications_none_rounded,
            //       color: Colors.white.withOpacity(.75),
            //     ),
            //
            //     const SizedBox(width: 12),
            //
            //     CircleAvatar(
            //       radius: 16,
            //       backgroundImage: NetworkImage(
            //         controller.lawyerImage.value,
            //       ),
            //     ),
            //   ],
            // ),

            const SizedBox(height: 10),

            /// Badge
            Row(
              children: [

                /// Case Badge
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xff7A2EFF).withOpacity(.25),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    controller.caseId.value,
                    style: const TextStyle(
                      color: Color(0xffD8B8FF),
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      letterSpacing: .5,
                    ),
                  ),
                ),

                const Spacer(),

                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    // TODO: Show BottomSheet / Menu
                  },
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: const Color(0xff2A1E35),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.white.withOpacity(.08),
                      ),
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      splashRadius: 20,
                      onPressed: () {
                        // TODO: Menu
                      },
                      icon: const Icon(
                        Icons.more_horiz_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 14),

            /// Title
            Text(
              controller.caseTitle.value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 31,
                fontWeight: FontWeight.bold,
                height: 1.15,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              controller.lastUpdated.value,
              style: TextStyle(
                color: Colors.white.withOpacity(.60),
                fontStyle: FontStyle.italic,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}