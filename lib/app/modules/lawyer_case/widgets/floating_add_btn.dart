import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../add_case/views/add_case_view.dart';

class FloatingAddButton extends StatelessWidget {
  const FloatingAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 8,
      backgroundColor: const Color(0xffD16CFF),
      onPressed: () {
        Get.to(() => const AddCaseView());
      },
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}