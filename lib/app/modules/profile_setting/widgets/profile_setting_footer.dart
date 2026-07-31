import 'package:flutter/material.dart';

class ProfileSettingFooter extends StatelessWidget {
  final VoidCallback onLogout;

  const ProfileSettingFooter({
    super.key,
    required this.onLogout,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        children: [

          SizedBox(
            width: double.infinity,
            height: 54,
            child: OutlinedButton.icon(
              onPressed: onLogout,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Color(0xffFF8C66),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              icon: const Icon(
                Icons.logout,
                color: Color(0xffFF8C66),
              ),
              label: const Text(
                "Sign Out",
                style: TextStyle(
                  color: Color(0xffFF8C66),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            "LexisAI v2.4.0 (2025-LITE)",
            style: TextStyle(
              color: Colors.white38,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}