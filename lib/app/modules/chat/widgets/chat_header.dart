import 'package:flutter/material.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        /// Small Title
        const Text(
          "SECURE CONVERSATIONS",
          style: TextStyle(
            color: Colors.white54,
            fontSize: 11,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.5,
          ),
        ),

        const SizedBox(height: 6),

        /// Heading
        const Text(
          "Secure conversations with lawyers\nand AI",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            height: 1.25,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 10),

        /// Divider
        Container(
          height: 1,
          width: double.infinity,
          color: Colors.white.withOpacity(.05),
        ),
      ],
    );
  }
}