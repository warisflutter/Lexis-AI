import 'dart:ui';

import 'package:flutter/material.dart';

import 'animated_widget.dart';

class OnboardingHeroWidget extends StatelessWidget {
  const OnboardingHeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 280,
      child: Stack(
        alignment: Alignment.center,
        children: [

          /// Glow
          Container(
            height: 240,
            width: 240,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFECB2FF).withOpacity(.08),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFECB2FF).withOpacity(.12),
                  blurRadius: 100,
                  spreadRadius: 20,
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
                height: 260,
                width: 260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: Colors.white.withOpacity(.04),
                  border: Border.all(
                    color: Colors.white.withOpacity(.08),
                  ),
                ),
              ),
            ),
          ),

          /// Gavel Box
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              Transform.rotate(
                angle: -.20,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white.withOpacity(.06),
                  ),
                  child: const Icon(
                    Icons.gavel_rounded,
                    size: 50,
                    color: Color(0xFFD3BEEB),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [

                  Container(
                    width: 24,
                    height: 4,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3BEEB),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),

                  const SizedBox(width: 6),

                  Container(
                    width: 12,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.15),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),

                  const SizedBox(width: 6),

                  Container(
                    width: 12,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.15),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ],
              ),
            ],
          ),

          /// Search
          Positioned(
            top: 67,
            right: 90,
            child: Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.08),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.search,
                color: Color(0xFFECB2FF),
                size: 18,
              ),
            ),
          ),

          /// Balance
          Positioned(
            left: 0,
            bottom: 10,
            child: const FloatingBalanceIcon(
              icon: Icons.balance,
            ),
          ),          /// Verified
          Positioned(
            top: 20,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.08),
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Icon(
                Icons.verified,
                color: Color(0xFFECB2FF),
              ),
            ),
          ),
        ],
      ),
    );
  }
}