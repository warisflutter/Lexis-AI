import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../data/lawyer_model.dart';
import '../../../routes/app_pages.dart';

class LawyerCard extends StatelessWidget {
  final LawyerModel lawyer;

  const LawyerCard({
    super.key,
    required this.lawyer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xff22142C),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.white.withOpacity(.06),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.35),
            blurRadius: 12,
            offset: const Offset(0, 6),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Top Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://i.pravatar.cc/150?img=12",
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) {
                    return Container(
                      width: 60,
                      height: 60,
                      color: Colors.grey,
                      child: const Icon(Icons.person, color: Colors.white),
                    );
                  },
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      lawyer.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),

                    const SizedBox(height: 6),

                    Row(
                      children: [

                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 17,
                        ),

                        const SizedBox(width: 4),

                        Text(
                          "${lawyer.rating}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(width: 4),

                        Text(
                          "(${lawyer.reviews} reviews)",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),

          const SizedBox(height: 15),

          /// Badges
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [

              _badge(lawyer.type),

              _badge(lawyer.experience),

            ],
          ),

          const SizedBox(height: 15),

          /// Description
          Text(
            lawyer.description,
            style: TextStyle(
              color: Colors.grey.shade300,
              fontSize: 13,
              height: 1.45,
            ),
          ),

          const SizedBox(height: 18),

          /// Button
          SizedBox(
            width: double.infinity,
            height: 48,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffB44CFF),
                    Color(0xffF4A6FF),
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    Routes.HIRE_LAWYER,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Hire Lawyer",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff32113E),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _badge(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 7,
      ),
      decoration: BoxDecoration(
        color: const Color(0xff342241),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        text.toUpperCase(),
        style: const TextStyle(
          color: Color(0xffCFC2DB),
          fontWeight: FontWeight.w600,
          fontSize: 10,
        ),
      ),
    );
  }
}