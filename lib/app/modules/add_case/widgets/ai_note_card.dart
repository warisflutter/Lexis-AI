import 'package:flutter/material.dart';

class AiNoteCard extends StatelessWidget {
  const AiNoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,

      padding: const EdgeInsets.all(14),

      decoration: BoxDecoration(

        color: const Color(0xff21172A),

        borderRadius: BorderRadius.circular(14),

        border: Border.all(
          color: Colors.white.withOpacity(.08),
        ),

      ),

      child: Row(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Container(

            padding: const EdgeInsets.all(8),

            decoration: BoxDecoration(
              color: const Color(0xffD16CFF).withOpacity(.15),
              shape: BoxShape.circle,
            ),

            child: const Icon(
              Icons.auto_awesome,
              color: Color(0xffD16CFF),
              size: 22,
            ),
          ),

          const SizedBox(width: 14),

          Expanded(

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                const Text(
                  "LexisAI Assistant",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  "Once submitted, our AI will automatically create summaries, detect missing information and prepare the case for legal review.",
                  style: TextStyle(
                    color: Colors.white.withOpacity(.65),
                    fontSize: 12,
                    height: 1.5,
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}