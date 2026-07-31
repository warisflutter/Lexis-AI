import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/find_lawyer_controller.dart';
import '../widgets/lawyer_card.dart';
import '../widgets/category_chip.dart';
import '../widgets/search_bar.dart';

class FindLawyerView extends GetView<FindLawyerController> {
  const FindLawyerView({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(

          children: [

            LawyerSearchBar(),

            const SizedBox(height: 15),

            SizedBox(
              height: 42,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.categories.length,
                separatorBuilder: (_, __) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  return Obx(
                        () => CategoryChip(
                      title: controller.categories[index],
                      selected: controller.selectedCategory.value == index,
                      onTap: () => controller.changeCategory(index),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height:20),

            Expanded(
              child: ListView.builder(
                itemCount: controller.lawyers.length,
                itemBuilder: (_, index) {
                  return LawyerCard(
                    lawyer: controller.lawyers[index],
                  );
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}