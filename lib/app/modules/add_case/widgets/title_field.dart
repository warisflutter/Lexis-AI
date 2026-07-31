import 'package:flutter/material.dart';

class TitleField extends StatelessWidget {
  const TitleField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Text(
          "CASE TITLE",
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
            fontSize: 11,
          ),
        ),

        const SizedBox(height: 8),

        TextField(
          style: const TextStyle(
            color: Colors.white,
          ),

          decoration: InputDecoration(

            hintText: "Enter matter name...",

            hintStyle: TextStyle(
              color: Colors.white.withOpacity(.35),
            ),

            filled: true,

            fillColor: const Color(0xff21172A),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),

          ),
        ),

      ],
    );
  }
}