import 'package:flutter/material.dart';

class DocumentCard extends StatelessWidget {
  final Map data;

  const DocumentCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xff1E1E1F),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              color: (data["color"] as Color).withOpacity(.18),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              data["icon"],
              color: data["color"],
              size: 24,
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  data["title"],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  data["date"],
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 11,
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  children: [

                    Text(
                      data["size"],
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 12,
                      ),
                    ),

                    const Spacer(),

                    Text(
                      data["type"],
                      style: TextStyle(
                        color: data["color"],
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),

                  ],
                ),

              ],
            ),
          ),

          const SizedBox(width: 10),

          Icon(
            Icons.more_vert,
            color: Colors.grey.shade600,
          )

        ],
      ),
    );
  }
}