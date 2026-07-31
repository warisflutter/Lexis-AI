import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {

  final String title;
  final bool selected;
  final VoidCallback onTap;

  const CategoryChip({

    super.key,

    required this.title,

    required this.selected,

    required this.onTap,

  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(

      onTap: onTap,

      child: Container(

        padding: const EdgeInsets.symmetric(
            horizontal:16,
            vertical:8),

        decoration: BoxDecoration(
          color: selected
              ? const Color(0xffC95CFF)
              : const Color(0xff2A1A38),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: selected
                ? Colors.transparent
                : Colors.white.withOpacity(0.08),
          ),
        ),

        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: selected
                ? FontWeight.bold
                : FontWeight.w500,
            fontSize: 13,
          ),
        ),

      ),

    );

  }
}