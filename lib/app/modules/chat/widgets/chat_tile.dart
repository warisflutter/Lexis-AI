import 'package:flutter/material.dart';

import '../../../data/chat_model.dart';

class ChatTile extends StatelessWidget {
  final ChatModel chat;
  final VoidCallback? onTap;

  const ChatTile({
    super.key,
    required this.chat,
    this.onTap,
  });

  Color get roleColor {
    switch (chat.role) {
      case "LAWYER":
        return const Color(0xffA855F7);

      case "CLIENT":
        return const Color(0xff64748B);

      case "AI":
        return const Color(0xffC084FC);

      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),

        margin: const EdgeInsets.only(bottom: 8),

        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 10,
        ),

        decoration: BoxDecoration(
          color: const Color(0xff231A31),

          borderRadius: BorderRadius.circular(18),

          border: chat.role == "AI"
              ? Border.all(
            color: const Color(0xffA855F7),
            width: 1.5,
          )
              : Border.all(
            color: Colors.white.withOpacity(.05),
          ),

          boxShadow: chat.role == "AI"
              ? [
            BoxShadow(
              color: const Color(0xffA855F7).withOpacity(.25),
              blurRadius: 18,
              spreadRadius: 1,
            )
          ]
              : [],
        ),

        child: Row(
          children: [

            /// Avatar
            Stack(
              children: [

                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.grey.shade700,
                  backgroundImage: NetworkImage(chat.image),
                ),

                if (chat.isOnline)
                  Positioned(
                    right: 2,
                    bottom: 2,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: const Color(0xff22C55E),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color(0xff231A31),
                          width: 2,
                        ),
                      ),
                    ),
                  ),
              ],
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /// Name Row
                  Row(
                    children: [

                      Expanded(
                        child: Text(
                          chat.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                      ),

                      if (chat.isVerified)
                        const Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Icon(
                            Icons.verified,
                            size: 16,
                            color: Color(0xff3B82F6),
                          ),
                        ),

                      const SizedBox(width: 8),

                      Text(
                        chat.time,
                        style: const TextStyle(
                          color: Colors.white54,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 3),

                  /// Role Badge
                  Row(
                    children: [

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 2,
                        ),

                        decoration: BoxDecoration(
                          color: roleColor.withOpacity(.15),
                          borderRadius: BorderRadius.circular(20),
                        ),

                        child: Text(
                          chat.role,
                          style: TextStyle(
                            color: roleColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 8,
                          ),
                        ),
                      ),

                      if (chat.specialization.isNotEmpty) ...[
                        const SizedBox(width: 8),

                        Expanded(
                          child: Text(
                            chat.specialization,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white54,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),

                  const SizedBox(height: 5),

                  /// Last Message
                  Row(
                    children: [

                      Expanded(
                        child: Text(
                          chat.lastMessage,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: chat.isTyping
                                ? const Color(0xffA855F7)
                                : Colors.white70,
                            fontSize: 12,
                            fontWeight: chat.isTyping
                                ? FontWeight.w600
                                : FontWeight.normal,
                          ),
                        ),
                      ),

                      if (chat.unreadCount > 0)
                        Container(
                          margin: const EdgeInsets.only(left: 10),

                          height: 18,

                          width: 18,

                          decoration: const BoxDecoration(
                            color: Color(0xffA855F7),
                            shape: BoxShape.circle,
                          ),

                          child: Center(
                            child: Text(
                              chat.unreadCount.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),

                      if (chat.isPinned)
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Icon(
                            Icons.push_pin,
                            color: Colors.white54,
                            size: 14,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}