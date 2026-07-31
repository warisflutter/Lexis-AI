import 'package:flutter/material.dart';

class LawyerProfileImage extends StatelessWidget {
  const LawyerProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Stack(
        children: [

          /// Background Image
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(28),
              bottomRight: Radius.circular(28),
            ),
            child: Image.network(
              "https://i.pravatar.cc/600?img=12",
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
            )
          ),

          /// Dark Gradient
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(28),
                  bottomRight: Radius.circular(28),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(.15),
                    Colors.black.withOpacity(.45),
                    Colors.black.withOpacity(.75),
                  ],
                ),
              ),
            ),
          ),

          /// Favorite Button
          Positioned(
            top: 20,
            right: 18,
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.12),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}