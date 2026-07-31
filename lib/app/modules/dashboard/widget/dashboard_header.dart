import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Row(
          children: const [
            Icon(Icons.balance, color: Colors.white, size: 22),
            SizedBox(width: 5),
            Text(
              "LexisAI",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(
                  Routes.NOTIFICATION,
                );
              },
              child: const Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 22,
              ),
            ),

            const SizedBox(width: 15),

            CircleAvatar(
              radius: 14,
              backgroundImage: NetworkImage(
                "https://i.pravatar.cc/600?img=12",
              ),
              backgroundColor: Colors.transparent,
            )          ],
        ),
      ],
    );
  }
}