import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  final int activeIndex;
  final int totalDots;

  const DotsIndicator({
    super.key,
    required this.activeIndex,
    this.totalDots = 3,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalDots,
            (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),

          width: activeIndex == index ? 24 : 6,
          height: 6,

          decoration: BoxDecoration(
            color: activeIndex == index
                ? Colors.white
                : Colors.white24,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}