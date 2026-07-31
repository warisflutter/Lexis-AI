import 'package:flutter/material.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white10,
            ),
          ),
          child: const Icon(
            Icons.gavel_rounded,
            color: Colors.white,
            size: 40,
          ),
        ),

        const SizedBox(height: 20),

        const Text(
          "LEXIS AI",
          style: TextStyle(
            color: Color(0xFFD9B3FF),
            fontSize: 38,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 5),

        const Text(
          "INTELLECTUAL LUXURY IN LAW",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 10,
            letterSpacing: 3,
          ),
        ),
      ],
    );
  }
}