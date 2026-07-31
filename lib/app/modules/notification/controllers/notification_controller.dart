import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/notification_model.dart';

class NotificationController extends GetxController {

  /// Selected Filter
  final selectedFilter = 0.obs;

  final filters = [
    "All",
    "Case Updates",
    "Messages",
    "Deadlines",
  ];

  /// Notifications
  final notifications = <NotificationModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadNotifications();
  }

  void changeFilter(int index) {
    selectedFilter.value = index;
  }

  void markAllAsRead() {
    notifications.assignAll(
      notifications.map(
            (item) => NotificationModel(
          icon: item.icon,
          iconColor: item.iconColor,
          title: item.title,
          description: item.description,
          time: item.time,
          category: item.category,
          isUnread: false,
          isHighlighted: false,
          actionText: item.actionText, section: '',
        ),
      ),
    );
  }

  void loadNotifications() {
    notifications.assignAll([
      NotificationModel(
        icon: Icons.gavel_rounded,
        iconColor: const Color(0xffA855F7),
        title: "Case Update: Miller vs. Apex Corp",
        description:
        "A new motion has been filed by the defendant regarding discovery documents.",
        time: "2m ago",
        category: "UPDATE",
        isUnread: true,
        isHighlighted: true, section: '',
      ),

      NotificationModel(
        icon: Icons.mail_outline_rounded,
        iconColor: const Color(0xff7C3AED),
        title: "Message from Sarah Jenkins, Esq.",
        description:
        "\"I've finalized the settlement draft for your review. Let's discuss tomorrow.\"",
        time: "45m ago",
        category: "MESSAGE", section: '',
      ),

      NotificationModel(
        icon: Icons.account_balance_wallet_outlined,
        iconColor: const Color(0xff9CA3AF),
        title: "Deposition Reminder",
        description:
        "Your deposition for the Thompson case starts in 1 hour via SecureLink Video.",
        time: "2h ago",
        category: "REMINDER",
        actionText: "Join Meeting Room", section: '',
      ),

      NotificationModel(
        icon: Icons.warning_amber_rounded,
        iconColor: const Color(0xffEF4444),
        title: "Filing Deadline Approaching",
        description:
        "The statutory deadline for Case #2024-882 is approaching (24 hours remaining).",
        time: "5h ago",
        category: "ALERT", section: '',
      ),

      NotificationModel(
        icon: Icons.description_outlined,
        iconColor: const Color(0xff9CA3AF),
        title: "Documents Successfully Filed",
        description:
        "Digital copies of Exhibit A through D have been accepted by the court portal.",
        time: "8h ago",
        category: "DOCUMENT", section: '',
      ),
    ]);
  }

  List<NotificationModel> get filteredNotifications {
    switch (selectedFilter.value) {
      case 1:
        return notifications
            .where((e) =>
        e.category == "UPDATE" ||
            e.category == "REMINDER")
            .toList();

      case 2:
        return notifications
            .where((e) => e.category == "MESSAGE")
            .toList();

      case 3:
        return notifications
            .where((e) => e.category == "ALERT")
            .toList();

      default:
        return notifications;
    }
  }
}