import 'package:flutter/material.dart';

class DocumentSearch extends StatelessWidget {
  final TextEditingController controller;

  const DocumentSearch({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: TextField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center,

        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),

        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xff241731),

          hintText: "Search case files, evidence...",

          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),

          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
            size: 22,
          ),

          suffixIcon: const Icon(
            Icons.tune,
            color: Colors.grey,
            size: 22,
          ),

          contentPadding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(
              color: Color(0xffA855F7),
              width: 1.2,
            ),
          ),
        ),
      ),
    );
  }
}