import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/lawyer_case_controller.dart';

class CaseStatusTabs extends GetView<LawyerCaseController> {
  const CaseStatusTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Row(
        children: [

          _tab("Active", 0),

          const SizedBox(width: 20),

          _tab("Pending", 1),

          const SizedBox(width: 20),

          _tab("Closed", 2),

          const Spacer(),

          Text(
            "UPDATED 2M AGO",
            style: TextStyle(
              color: Colors.white.withOpacity(.35),
              fontSize: 10,
              fontWeight: FontWeight.w600,
              letterSpacing: .8,
            ),
          )
        ],
      ),
    );
  }

  Widget _tab(String title, int index) {
    bool active = controller.selectedTab.value == index;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(30), // Rounded splash
        splashColor: const Color(0xffC86BFF).withOpacity(0.20),
        highlightColor: const Color(0xffC86BFF).withOpacity(0.08),
        onTap: () {
          controller.changeTab(index);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 4,
            vertical: 6,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: active ? Colors.white : Colors.white54,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 8),

              AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                height: 2,
                width: 45,
                decoration: BoxDecoration(
                  color: active
                      ? const Color(0xffC86BFF)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}