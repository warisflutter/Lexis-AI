import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/lawyer_case_controller.dart';
import '../widgets/case_item.dart';
import '../widgets/case_search_bar.dart';
import '../widgets/case_status_bar.dart';
import '../widgets/floating_add_btn.dart';

class LawyerCaseView extends GetView<LawyerCaseController> {
  const LawyerCaseView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LawyerCaseController());

    return Scaffold(
      backgroundColor: const Color(0xff170022),

      floatingActionButton: const FloatingAddButton(),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 18),

              const Text(
                "Case Portfolio",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              Text(
                "Managing 24 active litigations",
                style: TextStyle(
                  color: Colors.white.withOpacity(.55),
                  fontSize: 13,
                ),
              ),

              const SizedBox(height: 24),

              const CaseSearchBar(),

              const SizedBox(height: 20),

              const CaseStatusTabs(),

              const SizedBox(height: 20),

              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: controller.cases.length,
                  itemBuilder: (context, index) {

                    final item = controller.cases[index];

                    return CaseItem(
                      dotColor: item["statusColor"],
                      status: item["status"],
                      title: item["title"],
                      lawyer: item["lawyer"],
                      description: item["description"],
                      onTap: () {
                        Get.toNamed(Routes.CASE_DETAIL);
                      },
                    );

                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}