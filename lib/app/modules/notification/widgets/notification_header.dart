import 'package:flutter/material.dart';

class NotificationHeader extends StatelessWidget {
  final VoidCallback onMarkAllRead;

  const NotificationHeader({
    super.key,
    required this.onMarkAllRead,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        /// Top Bar
        Row(
          children: [

            const Icon(
              Icons.gavel_rounded,
              color: Color(0xffA855F7),
              size: 28,
            ),

            const SizedBox(width: 10),

            const Text(
              "LexisAI",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),

            const Spacer(),

            Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                color: const Color(0xff26222D),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.settings_outlined,
                color: Colors.white70,
                size: 20,
              ),
            ),

            const SizedBox(width: 10),

            Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                color: const Color(0xff26222D),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.person_outline,
                color: Colors.white70,
                size: 20,
              ),
            ),
          ],
        ),

        const SizedBox(height: 30),

        const Text(
          "Notifications",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 6),

        Row(
          children: [

            const Text(
              "Updates & Legal Alerts",
              style: TextStyle(
                color: Colors.white54,
                fontSize: 13,
              ),
            ),

            const Spacer(),

            TextButton(
              onPressed: onMarkAllRead,
              child: const Text(
                "Mark all as read",
                style: TextStyle(
                  color: Color(0xffA855F7),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}