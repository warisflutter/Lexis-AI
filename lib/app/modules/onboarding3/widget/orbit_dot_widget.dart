import 'dart:math';
import 'package:flutter/material.dart';

class OrbitDot extends StatefulWidget {

  final double radius;
  final double size;
  final Duration duration;

  const OrbitDot({
    super.key,
    required this.radius,
    this.size = 8,
    this.duration = const Duration(seconds: 5),
  });

  @override
  State<OrbitDot> createState() => _OrbitDotState();
}

class _OrbitDotState extends State<OrbitDot>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {

        final angle =
            controller.value * 2 * pi;

        final dx =
            widget.radius * cos(angle);

        final dy =
            widget.radius * sin(angle);

        return Transform.translate(
          offset: Offset(dx, dy),
          child: child,
        );
      },
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xFFECB2FF),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFECB2FF)
                  .withOpacity(.6),
              blurRadius: 12,
            ),
          ],
        ),
      ),
    );
  }
}