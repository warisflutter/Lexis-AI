import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/hire_lawyer_controller.dart';

class LawyerActionButtons extends GetView<HireLawyerController> {
  const LawyerActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.fromLTRB(18, 14, 18, 20),
        decoration: const BoxDecoration(
          color: Color(0xff21102D),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28),
            topRight: Radius.circular(28),
          ),
        ),
        child: Row(
          children: [

            Expanded(
              flex: 2,
              child: SizedBox(
                height: 56,
                child: ElevatedButton.icon(
                  onPressed: controller.chatNow,
                  icon: const Icon(
                    Icons.chat_bubble_outline,
                    size: 20,
                  ),
                  label: const Text(
                    "Chat Now",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff3A2748),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(width: 14),

            Expanded(
              flex: 2,
              child: SizedBox(
                height: 56,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffB44CFF),
                        Color(0xffF4A6FF),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: ElevatedButton.icon(
                    onPressed: controller.hireLawyer,
                    icon: const Icon(
                      Icons.gavel_rounded,
                      color: Color(0xff32113E),
                      size: 20,
                    ),
                    label: const Text(
                      "Hire Lawyer",
                      style: TextStyle(
                        color: Color(0xff32113E),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}