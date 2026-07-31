import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  final String note;

  const NoteCard({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xff26212E),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.white.withOpacity(.08),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Icon(
            Icons.format_quote_rounded,
            color: Color(0xffC37BFF),
            size: 28,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              note,
              style: TextStyle(
                color: Colors.white.withOpacity(.82),
                fontSize: 14,
                height: 1.7,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}