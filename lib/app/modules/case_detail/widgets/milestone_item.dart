import 'package:flutter/material.dart';

class MilestoneItem extends StatelessWidget {

  final String title;
  final String date;
  final String description;
  final bool completed;
  final bool isLast;

  const MilestoneItem({
    super.key,
    required this.title,
    required this.date,
    required this.description,
    required this.completed,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Column(
            children: [

              Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: completed
                      ? const Color(0xffC37BFF)
                      : Colors.white,
                  border: Border.all(
                    color: const Color(0xffC37BFF),
                    width: 2,
                  ),
                ),
              ),

              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    color: Colors.white12,
                  ),
                ),
            ],
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Container(
              margin: const EdgeInsets.only(bottom: 18),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0xff26212E),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: Colors.white.withOpacity(.08),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: [

                      Expanded(
                        child: Text(
                          title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Text(
                        date,
                        style: TextStyle(
                          color: Colors.white.withOpacity(.55),
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.white.withOpacity(.70),
                      fontSize: 13,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}