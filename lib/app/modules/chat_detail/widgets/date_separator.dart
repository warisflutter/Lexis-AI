import 'package:flutter/material.dart';

class DateSeparator extends StatelessWidget {
  final String title;

  const DateSeparator({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 7,
          ),
          decoration: BoxDecoration(
            color: const Color(0xff2A2234),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: Color(0xffAFA8BC),
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}