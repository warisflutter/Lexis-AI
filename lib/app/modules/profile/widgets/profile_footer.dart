import 'package:flutter/material.dart';

class ProfileFooter extends StatelessWidget {
  const ProfileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [

        Icon(
          Icons.balance,
          color: Colors.white24,
          size: 28,
        ),

        SizedBox(height: 8),

        Text(
          "LEXISAI SECURITY CORE",
          style: TextStyle(
            color: Colors.white54,
            fontSize: 10,
            letterSpacing: 1.2,
            fontWeight: FontWeight.w600,
          ),
        ),

        SizedBox(height: 4),

        Text(
          "Encrypted SSL • Legal Workspace v1.3.0",
          style: TextStyle(
            color: Colors.white24,
            fontSize: 9,
          ),
        ),
      ],
    );
  }
}