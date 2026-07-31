import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/case_detail_controller.dart';
import 'milestone_item.dart';

class MilestoneTimeline extends GetView<CaseDetailController> {
  const MilestoneTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: const [

              Icon(
                Icons.history,
                color: Color(0xffC37BFF),
                size: 18,
              ),

              SizedBox(width: 8),

              Text(
                "Case Milestones",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 18),

          Obx(
                () => Column(
              children: List.generate(
                controller.milestones.length,
                    (index) {

                      final Map<String, dynamic> item = controller.milestones[index];

                      return MilestoneItem(
                        title: item["title"] as String,
                        date: item["date"] as String,
                        description: item["description"] as String,
                        completed: (item["status"] as String) == "Completed",
                        isLast: index == controller.milestones.length - 1,
                      );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}