import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/case_detail_controller.dart';

class FloatingNoteButton extends GetView<CaseDetailController> {
  const FloatingNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: "case_note",
      onPressed: controller.addInternalNote,

      backgroundColor: const Color(0xffA855F7),
      elevation: 10,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24), // 16,18,20 try kar sakte ho
      ),

      child: const Icon(
        Icons.chat_bubble_outline,
        color: Colors.white,
        size: 28,
      ),
    );
  }
}