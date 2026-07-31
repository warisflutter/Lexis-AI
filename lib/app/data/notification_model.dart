import 'package:flutter/material.dart';

class NotificationModel {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String description;
  final String time;
  final String category;
  final bool isUnread;
  final bool isHighlighted;
  final String? actionText;
  final String section;

  NotificationModel({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.description,
    required this.time,
    required this.category,
    this.isUnread = false,
    this.isHighlighted = false,
    this.actionText,
    required this.section,
  });
}