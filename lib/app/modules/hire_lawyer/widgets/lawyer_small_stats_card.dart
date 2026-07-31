import 'package:flutter/material.dart';

class LawyerSmallStatsCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const LawyerSmallStatsCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 130,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xff2B1839),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              icon,
              color: const Color(0xffA98BFF),
              size: 28,
            ),

            const SizedBox(height: 12),

            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(.65),
                fontSize: 13,
              ),
            ),

          ],
        ),
      ),
    );
  }
}