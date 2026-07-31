import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lexis_ai/app/routes/app_pages.dart';

import '../../onboarding1/widget/animated_widget.dart';
import '../../onboarding2/Widget/dots_indicator.dart';
import '../controllers/onboarding3_controller.dart';
import '../widget/orbit_dot_widget.dart';

class Onboarding3View extends GetView<Onboarding3Controller> {
  const Onboarding3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF120A1F),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [

              const SizedBox(height: 20),

              // Logo
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.gavel_rounded,
                    color: Color(0xffC76CFF),
                    size: 18,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "LEXIS AI",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),

              const Spacer(),

              // Illustration Section
              SizedBox(
                height: 300,
                width: 280,
                child: Stack(
                  alignment: Alignment.center,
                  children: [

                    /// Purple Glow
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFFECB2FF).withOpacity(.08),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFC76CFF).withOpacity(.25),
                            blurRadius: 100,
                            spreadRadius: 15,
                          ),
                        ],
                      ),
                    ),

                    /// Glass Card
                    ClipRRect(
                      borderRadius: BorderRadius.circular(36),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 25,
                          sigmaY: 25,
                        ),
                        child: Container(
                          height: 220,
                          width: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: Colors.white.withOpacity(.04),
                            border: Border.all(
                              color: Colors.white.withOpacity(.08),
                            ),
                          ),
                        ),
                      ),
                    ),

                    /// Main Folder Icon
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(.06),
                      ),
                      child: const Icon(
                        Icons.folder_copy_outlined,
                        size: 45,
                        color: Color(0xFFD3BEEB),
                      ),
                    ),

                    /// Shield Icon
                    Positioned(
                      top: 35,
                      right: 15,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.08),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Icon(
                          Icons.verified_user_outlined,
                          color: Color(0xFFECB2FF),
                          size: 20,
                        ),
                      ),
                    ),

                    /// AI Icon
                    Positioned(
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.08),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Icon(
                          Icons.auto_fix_high,
                          color: Color(0xFFECB2FF),
                          size: 20,
                        ),
                      ),
                    ),

                    /// Video Icon
                    Positioned(
                      left: 0,
                      bottom: 35,
                      child: const FloatingBalanceIcon(
                        icon: Icons.videocam_outlined,
                      ),
                    ),
                    /// Decorative Glow Dots
                    const Positioned(
                      top: 20,
                      left: 40,
                      child: OrbitDot(
                        radius: 12,
                        size: 8,
                        duration: Duration(seconds: 4),
                      ),
                    ),

                    const Positioned(
                      bottom: 25,
                      right: 45,
                      child: OrbitDot(
                        radius: 15,
                        size: 10,
                        duration: Duration(seconds: 6),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),

              // Title
              const Text(
                "Manage Cases Digitally",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                "Track case progress, sign\n documents, and manage invoices in\n one secure vault.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 14,
                  height: 1.6,
                ),
              ),

              const SizedBox(height: 35),

              // Indicator
              const DotsIndicator(
                activeIndex: 2,
              ),
              const SizedBox(height: 30),

              // Button
              SizedBox(
                width: double.infinity,
                height: 58,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed(Routes.LOGIN);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffC76CFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                "LEGAL TERMS & PRIVACY",
                style: TextStyle(
                  color: Colors.white38,
                  fontSize: 10,
                  letterSpacing: 1.2,
                ),
              ),

              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}