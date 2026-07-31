import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/notification_controller.dart';
import '../widgets/notification_card.dart';
import '../widgets/notification_filter.dart';
import '../widgets/notification_header.dart';
import '../widgets/notification_section.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff17121F),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),

              /// Header
              NotificationHeader(
                onMarkAllRead: controller.markAllAsRead,
              ),

              const SizedBox(height: 20),

              /// Filter Chips
              Obx(
                    () => NotificationFilter(
                  filters: controller.filters,
                  selectedIndex: controller.selectedFilter.value,
                  onSelected: controller.changeFilter,
                ),
              ),

              const SizedBox(height: 24),

              /// Notifications
              Expanded(
                child: Obx(
                      () => ListView(
                    children: [

                      const Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Text(
                          "EARLIER TODAY",
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      ...controller.filteredNotifications.map(
                            (e) => NotificationCard(notification: e),
                      ),

                    ],
                  ),
                ),
              ),            ],
          ),
        ),
      ),
    );
  }
}