import 'package:flutter/material.dart';

class ProgressStepper extends StatelessWidget {
  const ProgressStepper({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

        const Text(
          "Initiate Case",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),

        const SizedBox(height: 8),

        Text(
          "Draft a new legal matter with AI-assisted intake.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white.withOpacity(.65),
            fontSize: 13,
          ),
        ),

        const SizedBox(height: 22),

        Row(
          children: [

            _circle(true, "1"),

            Expanded(
              child: Container(
                height: 2,
                color: const Color(0xffD16CFF),
              ),
            ),

            _circle(false, "2"),

          ],
        ),

        const SizedBox(height: 8),

        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text(
              "Details",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),

            Text(
              "Review",
              style: TextStyle(
                color: Colors.white38,
                fontSize: 12,
              ),
            ),

          ],
        ),

      ],
    );
  }

  Widget _circle(bool active, String text) {
    return Container(
      width: 34,
      height: 34,
      decoration: BoxDecoration(
        color: active
            ? const Color(0xffD16CFF)
            : const Color(0xff35243F),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}