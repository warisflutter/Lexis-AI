import 'package:flutter/material.dart';

class VoiceMessage extends StatelessWidget {
  final String duration;

  const VoiceMessage({
    super.key,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 70,
        right: 14,
        top: 12,
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 12,
          ),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xffC026FF),
                Color(0xff8A2EFF),
              ],
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [

              Container(
                height: 34,
                width: 34,
                decoration: const BoxDecoration(
                  color: Colors.white24,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),

              const SizedBox(width: 14),

              SizedBox(
                width: 80,
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    18,
                        (index) => Container(
                      width: 3,
                      height: index.isEven ? 18 : 10,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.circular(2),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 12),

              Text(
                duration,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}