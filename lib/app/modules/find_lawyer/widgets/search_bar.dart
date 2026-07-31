import 'package:flutter/material.dart';

class LawyerSearchBar extends StatelessWidget {

  const LawyerSearchBar({super.key});

  @override
  Widget build(BuildContext context) {

    return TextField(
      style: const TextStyle(
        color: Colors.white, // User jo text type karega wo white hoga
        fontSize: 15,
      ),
      cursorColor: Colors.purpleAccent,
      decoration: InputDecoration(
        hintText: "Search by name or case type...",
        hintStyle: TextStyle(
          color: Colors.grey.shade400,
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        filled: true,
        fillColor: const Color(0xff261835),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );

  }
}