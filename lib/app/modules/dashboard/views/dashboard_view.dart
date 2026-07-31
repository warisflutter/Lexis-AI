import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/dashboard_controller.dart';

import '../widget/bottom_nav.dart';
import '../widget/case_card.dart';
import '../widget/dashboard_header.dart';
import '../widget/dashboard_menu_card.dart';
import '../widget/upcoming_card.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF170022),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // ================= GREETING CARD =================
              Container(
                width: double.infinity,

                padding: const EdgeInsets.all(14),

                decoration: BoxDecoration(
                  color: const Color(0xff321A3E),

                  borderRadius: BorderRadius.circular(8),

                  border: Border.all(color: Colors.purple.withOpacity(.2)),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    const Text(
                      "Good Afternoon,\nJohnathan",

                      style: TextStyle(
                        color: Colors.white,

                        fontSize: 18,

                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 6),

                    const Text(
                      "Your legal strategy is currently being\noptimized by LexisAI.",

                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),

                    const SizedBox(height: 10),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,

                        vertical: 4,
                      ),

                      decoration: BoxDecoration(
                        color: const Color(0xff52305E),

                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: const Text(
                        "✦ ACTIVE INTELLIGENCE",

                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ================= SEARCH =================
              TextField(
                decoration: InputDecoration(
                  hintText: "Search for attorneys or legal experts",

                  hintStyle: const TextStyle(color: Colors.grey),

                  filled: true,

                  fillColor: const Color(0xffF5F1F7),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),

                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // ================= MENU =================
              GridView.builder(
                shrinkWrap: true,

                physics: const NeverScrollableScrollPhysics(),

                itemCount: controller.menuItems.length,

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,

                  childAspectRatio: 1.5,

                  crossAxisSpacing: 10,

                  mainAxisSpacing: 10,
                ),

                itemBuilder: (context, index) {
                  final item = controller.menuItems[index];

                  return DashboardMenuCard(
                    data: item,
                    onTap: () {

                      if (item["icon"] == "document") {
                        Get.toNamed(
                          Routes.DOCUMENTS,
                        );
                      }

                    },
                  );
                },
              ),

              const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  const Text(
                    "Case Updates",

                    style: TextStyle(
                      color: Colors.white,

                      fontSize: 18,

                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const Text(
                    "View All",

                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 180,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemCount: controller.cases.length,

                  itemBuilder: (context, index) {
                    return CaseCard(data: controller.cases[index]);
                  },
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                "Upcoming",

                style: TextStyle(
                  color: Colors.white,

                  fontSize: 18,

                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              UpcomingCard(data: {
                "events": controller.upcoming
              }),            ],
          ),
        ),
      ),

      // bottomNavigationBar: const BottomNav(),
    );
  }
}
