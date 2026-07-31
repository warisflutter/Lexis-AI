import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: const BoxDecoration(
        color: Color(0xff21102D),
        border: Border(
          bottom: BorderSide(
            color: Color(0x22FFFFFF),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  "https://i.imgur.com/I80W1Q0.png",
                  width: 38,
                  height: 38,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(width: 10),

              const Text(
                "LexisAI",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Colors.white,
              size: 26,
            ),
          ),
        ],
      ),
    );
  }
}