import 'package:flutter/material.dart';

class FloatingBalanceIcon extends StatefulWidget {

  final IconData icon;

  const FloatingBalanceIcon({

    super.key,
    required this.icon,

  });

  @override
  State<FloatingBalanceIcon> createState() =>
      _FloatingBalanceIconState();
}
class _FloatingBalanceIconState
    extends State<FloatingBalanceIcon>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    animation = Tween<double>(
      begin: 0,
      end: -15,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.bounceInOut,
      ),
    );

    controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, animation.value),
          child: child,
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.08),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          widget.icon,
          color: const Color(0xFFD3BEEB),
        ),
      ),
    );
  }
}