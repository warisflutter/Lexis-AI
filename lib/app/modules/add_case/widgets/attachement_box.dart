import 'package:flutter/material.dart';

class AttachmentBox extends StatelessWidget {
  const AttachmentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Text(
          "ATTACHMENTS",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 11,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 10),

        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 28),

          decoration: BoxDecoration(
            color: const Color(0xff21172A),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Colors.white.withOpacity(.08),
              width: 1,
            ),
          ),

          child: Column(
            children: [

              const Icon(
                Icons.upload_file,
                size: 45,
                color: Color(0xffD16CFF),
              ),

              const SizedBox(height: 12),

              const Text(
                "Click or drag files to upload",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 6),

              Text(
                "PDF, DOCX, JPG (Max 50MB)",
                style: TextStyle(
                  color: Colors.white.withOpacity(.5),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}