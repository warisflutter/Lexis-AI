import 'package:flutter/material.dart';

class CaseCard extends StatelessWidget {
  final Map data;

  const CaseCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,

      margin: const EdgeInsets.only(right: 10),

      padding: const EdgeInsets.all(14),

      decoration: BoxDecoration(
        color: const Color(0xff21152A),

        borderRadius: BorderRadius.circular(12),

        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          // ================= TOP ROW =================
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              const Text(
                "Case #001",

                style: TextStyle(
                  color: Colors.grey,

                  fontSize: 10,

                  fontWeight: FontWeight.w500,
                ),
              ),

              Container(
                height: 8,

                width: 8,

                decoration: const BoxDecoration(
                  shape: BoxShape.circle,

                  color: Colors.greenAccent,
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // ================= TITLE =================
          Text(
            data['title'],

            maxLines: 2,

            overflow: TextOverflow.ellipsis,

            style: const TextStyle(
              color: Colors.white,

              fontSize: 15,

              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          // ================= DESCRIPTION =================
          Text(
            data['desc'],

            maxLines: 3,

            overflow: TextOverflow.ellipsis,

            style: const TextStyle(color: Colors.grey, fontSize: 11),
          ),

          const Spacer(),

          // ================= TAGS =================
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),

                decoration: BoxDecoration(
                  color: const Color(0xff392443),

                  borderRadius: BorderRadius.circular(20),
                ),

                child: Text(
                  data['tag'],

                  style: const TextStyle(color: Colors.white, fontSize: 9),
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),

                decoration: BoxDecoration(
                  color: data['priority'] == "URGENT"
                      ? Colors.red.withOpacity(.2)
                      : Colors.orange.withOpacity(.2),

                  borderRadius: BorderRadius.circular(20),
                ),

                child: Text(
                  data['priority'],

                  style: TextStyle(
                    color: data['priority'] == "URGENT"
                        ? Colors.redAccent
                        : Colors.orangeAccent,

                    fontSize: 9,

                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
