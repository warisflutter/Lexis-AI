import 'package:flutter/material.dart';

class NotificationSection extends StatelessWidget {
  final String title;
  final Widget child;

  const NotificationSection({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: const EdgeInsets.only(
            bottom: 14,
          ),
          child: Text(
            title.toUpperCase(),
            style: const TextStyle(
              color: Colors.white38,
              fontSize: 11,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ),

        Expanded(
          child: child,
        ),
      ],
    );
  }
}