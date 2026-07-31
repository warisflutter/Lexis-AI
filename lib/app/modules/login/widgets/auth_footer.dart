import 'package:flutter/material.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Privacy Charter",
          style: TextStyle(
            color: Colors.white38,
            fontSize: 11,
          ),
        ),
        SizedBox(width: 12),
        Text(
          "•",
          style: TextStyle(
            color: Colors.white38,
          ),
        ),
        SizedBox(width: 12),
        Text(
          "Legal Terms",
          style: TextStyle(
            color: Colors.white38,
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}