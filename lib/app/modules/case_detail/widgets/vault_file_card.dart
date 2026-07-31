import 'package:flutter/material.dart';

class VaultFileCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String fileName;
  final String fileSize;
  final VoidCallback? onTap;

  const VaultFileCard({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.fileName,
    required this.fileSize,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: const Color(0xff26212E),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: Colors.white.withOpacity(.08),
          ),
        ),
        child: Row(
          children: [

            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: iconColor.withOpacity(.12),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon,
                color: iconColor,
                size: 22,
              ),
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    fileName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    fileSize,
                    style: TextStyle(
                      color: Colors.white.withOpacity(.55),
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),

            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white.withOpacity(.35),
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}