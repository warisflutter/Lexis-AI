import 'package:flutter/material.dart';

class UpcomingCard extends StatelessWidget {
  final Map data;

  const UpcomingCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final events = data['events'];

    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(14),

      decoration: BoxDecoration(
        color: const Color(0xff21152A),

        borderRadius: BorderRadius.circular(12),

        border: Border.all(color: Colors.white.withOpacity(.05)),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          // ================= HEADER =================
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Row(
                children: [
                  Container(
                    height: 35,

                    width: 35,

                    decoration: BoxDecoration(
                      color: const Color(0xff392443),

                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: const Icon(
                      Icons.calendar_month_outlined,

                      color: Colors.purpleAccent,

                      size: 20,
                    ),
                  ),

                  const SizedBox(width: 10),

                  const Text(
                    "LEGAL CALENDAR",

                    style: TextStyle(
                      color: Colors.white,

                      fontSize: 13,

                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const Text(
                "May 2025",

                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),

          const SizedBox(height: 18),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.white.withOpacity(.08),
          ),

          const SizedBox(height: 12),

          // ================= EVENTS LIST =================
          Column(
            children: List.generate(events.length, (index) {
              final item = events[index];

              return Padding(
                padding: EdgeInsets.only(
                  bottom: index == events.length - 1 ? 0 : 14,
                ),

                child: Row(
                  children: [
                    Container(
                      height: 45,

                      width: 50,

                      decoration: BoxDecoration(
                        color: const Color(0xff32223C),

                        borderRadius: BorderRadius.circular(8),
                      ),

                      child: Center(
                        child: Text(
                          item['date'] ?? '',

                          textAlign: TextAlign.center,

                          style: const TextStyle(
                            color: Colors.white,

                            fontSize: 9,

                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            item['title'] ?? '',

                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Row(
                            children: [
                              const Icon(
                                Icons.access_time,
                                color: Colors.grey,
                                size: 13,
                              ),

                              const SizedBox(width: 4),

                              Text(
                                item['time'] ?? '',

                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                ),
                              ),

                              const SizedBox(width: 10),

                              const Icon(
                                Icons.location_on_outlined,
                                color: Colors.grey,
                                size: 13,
                              ),

                              const SizedBox(width: 3),

                              Text(
                                item['location'] ?? '',

                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),

                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: 14,
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
