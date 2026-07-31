import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/hire_lawyer_controller.dart';

import '../widgets/lawyer_action_btn.dart';
import '../widgets/lawyer_biography.dart';
import '../widgets/lawyer_education.dart';
import '../widgets/lawyer_profile_image.dart';
import '../widgets/lawyer_info_card.dart';
import '../widgets/lawyer_small_stats_card.dart';
import '../widgets/lawyer_specialization.dart';

class HireLawyerView extends GetView<HireLawyerController> {
  const HireLawyerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff21102D),

      appBar: AppBar(
        backgroundColor: const Color(0xff21102D),
        elevation: 0,
        automaticallyImplyLeading: false,

        titleSpacing: 18,

        title: Row(
          children: const [

            Icon(
              Icons.gavel_rounded,
              color: Color(0xffB44CFF),
              size: 22,
            ),

            SizedBox(width: 8),

            Text(
              "LexisAI",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: .5,
              ),
            ),
          ],
        ),

        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.close,
              color: Colors.white,
              size: 24,
            ),
          ),

          const SizedBox(width: 8),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const LawyerProfileImage(),

              const SizedBox(height: 12),

              const LawyerInfoCard(),

              const SizedBox(height: 16),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [

                    LawyerSmallStatsCard(
                      icon: Icons.balance,
                      title: "Consultation",
                      value: controller.consultationFee.value,
                    ),

                    const SizedBox(width: 14),

                    LawyerSmallStatsCard(
                      icon: Icons.gavel_rounded,
                      title: "Win Rate",
                      value: controller.winRate.value,
                    ),

                  ],
                ),
              ),

              const SizedBox(height: 18),

              LawyerSpecialization(
                specializations: controller.specializations,
              ),

              const SizedBox(height: 18),

              LawyerBiography(),

              const SizedBox(height: 24),

              const LawyerEducation(),

              // 👇 Bottom buttons ke liye extra space
              const SizedBox(height: 60),

            ],
          ),
        ),
      ),

      bottomNavigationBar: const LawyerActionButtons(),
    );
  }
}