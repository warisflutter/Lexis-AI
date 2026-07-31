import 'package:flutter/material.dart';

class DocumentAppBar extends StatelessWidget {
  const DocumentAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        // Logo
        RichText(
          text: const TextSpan(
            children: [

              TextSpan(
                text: "Lexis",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),

              TextSpan(
                text: "AI",
                style: TextStyle(
                  color: Color(0xffA855F7),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ],
          ),
        ),

        const Spacer(),

        // Notification
        Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
            color: const Color(0xff23152F),
            borderRadius: BorderRadius.circular(12),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Colors.white,
              size: 22,
            ),
          ),
        ),

        const SizedBox(width: 12),

        // Profile
        Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffA855F7),
              width: 2,
            ),
            shape: BoxShape.circle,
          ),
          child: const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
              "https://i.pravatar.cc/150?img=12",
            ),
          ),
        ),
      ],
    );
  }
}