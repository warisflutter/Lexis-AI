import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../onboarding2/Widget/dots_indicator.dart';
import '../../onboardingmain/controllers/onboardingmain_controller.dart';
import '../controllers/onboarding1_controller.dart';
import '../widget/hero_widget.dart';
import '../widget/p_gradient_btn.dart';

class Onboarding1View extends GetView<Onboarding1Controller> {
  const Onboarding1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF120A1F),
      body: Container(
        // width: double.infinity,
        // decoration: const BoxDecoration(
        //   gradient: RadialGradient(
        //     center: Alignment.topRight,
        //     radius: 1.4,
        //     colors: [
        //       Color(0xFF320047),
        //       Color(0xFF121414),
        //     ],
        //   ),
        // ),
        child: SafeArea(
          child: Column(
            children: [

              /// Skip
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  top: 10,
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: controller.onSkipTap,
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    const OnboardingHeroWidget(),

                    const SizedBox(height: 35),

                    const Text(
                      "Find the Right Lawyer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        "Access top-tier legal expertise at your fingertips.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 15,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 50,
                ),
                child: Column(
                  children: [

                    const DotsIndicator(
                      activeIndex: 0,
                    ),
                    const SizedBox(height: 25),

                    // Button
                    SizedBox(
                      width: double.infinity,
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
            ],
          ),
        ),
      ),
    );
  }
}