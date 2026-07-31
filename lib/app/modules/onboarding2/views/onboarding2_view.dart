import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../onboarding1/widget/p_gradient_btn.dart';
import '../../onboardingmain/controllers/onboardingmain_controller.dart';
import '../Widget/call_card_widget.dart';
import '../Widget/dots_indicator.dart';
import '../controllers/onboarding2_controller.dart';
// import your existing widgets if available

class Onboarding2View extends GetView<Onboarding2Controller> {
  const Onboarding2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF120A1F),
      body: SafeArea(
        child: Column(
          children: [

            /// ================= TOP BAR (REUSABLE STYLE) =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                children: [

                  /// Row: Logo + Skip
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      /// Logo + Text
                      Row(
                        children: const [
                          Icon(
                            Icons.gavel_rounded,
                            color: Colors.white,
                            size: 28,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "LEXIS AI",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),

                      GestureDetector(
                        onTap: controller.onSkip,
                        child: const Text(
                          "SKIP",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  /// Divider Line (Left → Right)
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.white12,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),
            /// ================= SECURITY BADGE =================
      AnimatedBuilder(
        animation: controller.floatingAnimation,
        builder: (_, child) {
          return Transform.translate(
            offset: Offset(0, controller.floatingAnimation.value),
            child: child,
          );
        },
        child: Align(
          alignment: Alignment.centerLeft,
          child:  Container(
                margin: const EdgeInsets.only(left: 16, bottom: 10),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(28),
                  border: Border.all(color: Colors.white12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [

                    /// Lock Icon
                    Icon(
                      Icons.lock,
                      size: 16,
                      color: Colors.white70,
                    ),

                    SizedBox(width: 6),

                    /// Text
                    Text(
                      "256-BIT AES",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ),
            const SizedBox(height: 10),

            /// ================= MAIN CARD (CAN BE SEPARATE WIDGET LATER) =================
            AnimatedBuilder(
              animation: controller.floatingAnimation,
              builder: (_, child) {
                return Transform.translate(
                  offset: Offset(0, -controller.floatingAnimation.value),
                  child: child,
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: CallCard(),
              ),
            ),
            const SizedBox(height: 12),

            /// ================= STATUS CARD =================
      AnimatedBuilder(
        animation: controller.floatingAnimation,
        builder: (_, child) {
          return Transform.translate(
            offset: Offset(
              0,
              controller.floatingAnimation.value * 0.7,
            ),
            child: child,
          );
        },
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                padding: const EdgeInsets.all(12),
                constraints: const BoxConstraints(maxWidth: 200),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.white12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    /// Top Row: Icon + Text
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [

                        /// Verified Icon
                        Icon(
                          Icons.verified,
                          color: Colors.greenAccent,
                          size: 18,
                        ),

                        SizedBox(width: 8),

                        /// Main Text
                        Expanded(
                          child: Text(
                            "Your documents have been reviewed. Ready for filing.",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),

                    /// Bottom Meta Info
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Encrypted . 2m ago",
                        style: TextStyle(
                          color: Colors.white38,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ),

            const SizedBox(height: 30),

            /// ================= TEXT SECTION =================
            const Text(
              "Real-Time Legal\nCommunication",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Secure, encrypted messaging with your legal counsel anytime, anywhere.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white54),
              ),
            ),

            const SizedBox(height: 20),

            /// ================= DOTS (REUSABLE FUTURE WIDGET) =================
            const DotsIndicator(
              activeIndex: 1,
            ),
            const SizedBox(height: 20),

            /// ================= BUTTON (REUSING YOUR GRADIENT BUTTON) =================
            SizedBox(
              width: 300,
              height: 58,
              child: ElevatedButton(
                onPressed: () {
                  Get.find<OnboardingMainController>().nextPage();
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
                      "Next",
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
            )
          ],
        ),
      ),
    );
  }
}