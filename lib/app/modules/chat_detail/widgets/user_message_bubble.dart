import 'package:flutter/material.dart';

class UserMessageBubble extends StatelessWidget {
  final String message;
  final String time;
  final bool isSeen;

  const UserMessageBubble({
    super.key,
    required this.message,
    required this.time,
    this.isSeen = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 70,
        right: 14,
        top: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffC026FF),
                  Color(0xff8A2EFF),
                ],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(6),
              ),
            ),
            child: Text(
              message,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.45,
              ),
            ),
          ),

          const SizedBox(height: 5),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                time,
                style: const TextStyle(
                  color: Color(0xff807A8F),
                  fontSize: 10,
                ),
              ),

              const SizedBox(width: 5),

              Icon(
                isSeen ? Icons.done_all : Icons.done,
                color: Colors.blueAccent,
                size: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}