import 'package:flutter/material.dart';

class PriorityCaseCard extends StatelessWidget {
  const PriorityCaseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xff2A1B38),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: const Color(0xff6D2FEA),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Text(
              "PRIORITY CASE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 18),

          const Text(
            "Smith vs. Global Dynamics",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 6),

          Text(
            "Comprehensive discovery folder containing\n12 key evidentiary documents.",
            style: TextStyle(
              color: Colors.grey.shade400,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 18),

          Row(
            children: [

              const CircleAvatar(
                radius: 13,
                backgroundColor: Colors.deepPurple,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 15,
                ),
              ),

              const SizedBox(width: 6),

              const CircleAvatar(
                radius: 13,
                backgroundColor: Color(0xffC49A6C),
                child: Icon(
                  Icons.gavel,
                  color: Colors.white,
                  size: 14,
                ),
              ),

              const Spacer(),

              Text(
                "Review Folder",
                style: TextStyle(
                  color: Colors.grey.shade300,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(width: 6),

              const Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}