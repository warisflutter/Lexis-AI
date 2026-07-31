import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/case_detail_controller.dart';
import 'note_card.dart';

class InternalNotes extends GetView<CaseDetailController> {
  const InternalNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Obx(
            () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [

                const Icon(
                  Icons.sticky_note_2_outlined,
                  color: Color(0xffC37BFF),
                  size: 19,
                ),

                const SizedBox(width: 8),

                const Text(
                  "Internal Notes",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),

            const SizedBox(height: 16),

            NoteCard(
              note: controller.internalNote.value,
            ),
          ],
        ),
      ),
    );
  }
}