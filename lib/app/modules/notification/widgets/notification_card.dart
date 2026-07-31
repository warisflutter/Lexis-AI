import 'package:flutter/material.dart';

import '../../../data/notification_model.dart';


class NotificationCard extends StatelessWidget {
  final NotificationModel notification;

  const NotificationCard({
    super.key,
    required this.notification,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: const Color(0xff1E1B25),
        borderRadius: BorderRadius.circular(18),
        border: notification.isHighlighted
            ? const Border(
          left: BorderSide(
            color: Color(0xffA855F7),
            width: 3,
          ),
        )
            : null,
        boxShadow: notification.isHighlighted
            ? [
          BoxShadow(
            color: const Color(0xffA855F7).withOpacity(.15),
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ]
            : [],
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Icon Box
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: notification.iconColor.withOpacity(.12),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                notification.icon,
                color: notification.iconColor,
                size: 20,
              ),
            ),

            const SizedBox(width: 12),

            /// Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Title + Time
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          notification.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                      const SizedBox(width: 8),

                      Text(
                        notification.time,
                        style: const TextStyle(
                          color: Colors.white38,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  /// Description
                  Text(
                    notification.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 12),

                  /// Bottom Row
                  Row(
                    children: [
                      /// Category Badge
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: notification.iconColor.withOpacity(.12),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          notification.category,
                          style: TextStyle(
                            color: notification.iconColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                      if (notification.isUnread) ...[
                        const SizedBox(width: 8),

                        Container(
                          height: 7,
                          width: 7,
                          decoration: const BoxDecoration(
                            color: Color(0xffA855F7),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],

                      const Spacer(),

                      if (notification.actionText != null)
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xff6D28D9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            notification.actionText!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
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