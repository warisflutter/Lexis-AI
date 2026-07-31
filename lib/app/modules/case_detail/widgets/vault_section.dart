import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/case_detail_controller.dart';
import 'vault_file_card.dart';

class VaultSection extends GetView<CaseDetailController> {
  const VaultSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Obx(
            () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [

                const Icon(
                  Icons.lock_outline_rounded,
                  color: Color(0xffC37BFF),
                  size: 18,
                ),

                const SizedBox(width: 8),

                const Text(
                  "Vault",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),

                const Spacer(),

                Icon(
                  Icons.verified_rounded,
                  color: Colors.deepPurple.shade200,
                  size: 18,
                ),
              ],
            ),

            const SizedBox(height: 16),

            ...controller.vaultFiles.map((file) {

              final bool isPdf =
                  file["type"].toString() == "pdf";

              return VaultFileCard(
                icon: isPdf
                    ? Icons.picture_as_pdf_rounded
                    : Icons.image_rounded,

                iconColor: isPdf
                    ? Colors.redAccent
                    : Colors.blueAccent,

                fileName: file["name"].toString(),

                fileSize: file["size"].toString(),

                onTap: () {
                  controller.openVaultFile(file);
                },
              );
            }).toList(),

          ],
        ),
      ),
    );
  }
}