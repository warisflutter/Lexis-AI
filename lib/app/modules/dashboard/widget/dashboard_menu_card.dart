import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardMenuCard extends StatelessWidget {
  final Map data;
  final VoidCallback? onTap;

  const DashboardMenuCard({
    super.key,
    required this.data,
    this.onTap,
  });

  IconData getIcon(String icon) {
    switch (icon) {
      case "search":
        return Icons.person_search_outlined;
      case "folder":
        return Icons.folder_open_outlined;
      case "chat":
        return Icons.chat_bubble_outline;
      case "document":
        return Icons.description_outlined;
      default:
        return Icons.circle;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff21152A),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: const Color(0xff382044),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                getIcon(data['icon']),
                color: Colors.purpleAccent,
                size: 24,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              data['title'],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}