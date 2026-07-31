import 'package:flutter/material.dart';

class CaseSearchBar extends StatelessWidget {
  const CaseSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xff2A1E35),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.white.withOpacity(.08),
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Colors.white54,
            size: 22,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: TextField(
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search case name, ID, or court",
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(.45),
                  fontSize: 14,
                ),
              ),
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.tune,
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }
}