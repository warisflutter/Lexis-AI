import 'package:flutter/material.dart';

class LawyerStatsCard extends StatelessWidget {

  final String value;
  final String title;
  final IconData icon;

  const LawyerStatsCard({
    super.key,
    required this.value,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Container(
        height: 105,

        decoration: BoxDecoration(
          color: const Color(0xff322041),
          borderRadius: BorderRadius.circular(18),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              icon,
              color: const Color(0xff9D7CFF),
              size: 24,
            ),

            const SizedBox(height: 12),

            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(.65),
                fontSize: 12,
              ),
            ),

          ],
        ),
      ),
    );
  }
}