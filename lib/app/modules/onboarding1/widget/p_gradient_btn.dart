import 'package:flutter/material.dart';

class PrimaryGradientButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const PrimaryGradientButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            colors: [
              Color(0xFFD3BEEB),
              Color(0xFFECB2FF),
            ],
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Next",
              style: TextStyle(
                color: Color(0xFF38294D),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 8),
            Icon(
              Icons.arrow_forward,
              color: Color(0xFF38294D),
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}