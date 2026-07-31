import 'package:flutter/material.dart';

class ChatSearch extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  const ChatSearch({
    super.key,
    required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: BoxDecoration(
        color: const Color(0xff221B2E),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.white.withOpacity(.06),
        ),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: const TextStyle(
          color: Colors.white,
        ),
        cursorColor: const Color(0xffA855F7),
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 15),
          prefixIcon: Icon(
            Icons.search_rounded,
            color: Colors.white54,
          ),
          hintText: "Search lawyers, clients or conversations",
          hintStyle: TextStyle(
            color: Colors.white38,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}