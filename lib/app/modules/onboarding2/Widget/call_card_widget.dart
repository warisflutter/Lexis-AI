import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1A1029),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        children: [

          /// HEADER
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [

                const CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(
                    "https://i.pravatar.cc/150?img=12",
                  ),
                ),

                const SizedBox(width: 10),

                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sarah Sterling",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "LEAD PARTNER",
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "04:32",
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                )
              ],
            ),
          ),

          /// IMAGE AREA
          Container(
            height: 80,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1521791136064-7986c2920216",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 20),

          /// MESSAGE
        ],
      ),
    );
  }
}