import 'package:flutter/material.dart';

class CaseItem extends StatelessWidget {

  final Color dotColor;

  final String status;

  final String title;

  final String lawyer;

  final String description;
  final VoidCallback? onTap;


  const CaseItem({
    super.key,
    required this.dotColor,
    required this.status,
    required this.title,
    required this.lawyer,
    required this.description,
    this.onTap,
  });


  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
      
        margin: const EdgeInsets.only(bottom: 18),
      
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      
        decoration: BoxDecoration(
          color: const Color(0xff2A1E35),
      
          borderRadius: BorderRadius.circular(18),
      
          border: Border.all(
            color: const Color(0xffA855F7).withOpacity(.18),
            width: 1,
          ),
      
          boxShadow: [
      
            BoxShadow(
              color: const Color(0xffA855F7).withOpacity(.22),
              blurRadius: 18,
              spreadRadius: -6,
              offset: const Offset(0, 0),
            ),
      
            BoxShadow(
              color: Colors.black.withOpacity(.35),
              blurRadius: 12,
              offset: const Offset(0, 8),
            ),
      
          ],
        ),
        child: Column(
      
          crossAxisAlignment: CrossAxisAlignment.start,
      
          children: [
      
            Row(
      
              children: [
      
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: dotColor,
                    shape: BoxShape.circle,
                  ),
                ),
      
                const SizedBox(width: 8),
      
                Text(
                  status,
                  style: TextStyle(
                    color: dotColor,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
      
                const Spacer(),
      
                Icon(
                  Icons.more_vert,
                  color: Colors.white.withOpacity(.45),
                )
              ],
            ),
      
            const SizedBox(height: 8),
      
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
      
            const SizedBox(height: 12),
      
            Row(
      
              children: [
      
                CircleAvatar(
                  radius: 20, // Size kam ya zyada kar sakte ho
                  backgroundColor: Colors.grey.shade300,
                  backgroundImage: const NetworkImage(
                    "https://i.pravatar.cc/150?img=12",
                  ),
                  onBackgroundImageError: (_, __) {},
                ),
                const SizedBox(width: 10),
      
                Expanded(
                  child: Text(
                    lawyer,
                    style: TextStyle(
                      color: Colors.white.withOpacity(.75),
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                )
      
              ],
            ),
      
            const SizedBox(height: 12),
      
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: const Color(0xff2A1E35),
      
                borderRadius: BorderRadius.circular(18),
      
                border: Border.all(
                  color: const Color(0xffA855F7).withOpacity(.18),
                  width: 1,
                ),
      
                boxShadow: [
      
                  BoxShadow(
                    color: const Color(0xffA855F7).withOpacity(.22),
                    blurRadius: 18,
                    spreadRadius: -6,
                    offset: const Offset(0, 0),
                  ),
      
                  BoxShadow(
                    color: Colors.black.withOpacity(.35),
                    blurRadius: 12,
                    offset: const Offset(0, 8),
                  ),
      
                ],
              ),
              child: Text(
                description,
                style: TextStyle(
                  color: Colors.white.withOpacity(.70),
                  height: 1.3,
                  fontStyle: FontStyle.italic,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}