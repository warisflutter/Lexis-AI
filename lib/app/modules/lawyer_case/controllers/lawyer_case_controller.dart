import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LawyerCaseController extends GetxController {
  RxInt selectedTab = 0.obs;

  final List<String> tabs = [
    "Active",
    "Pending",
    "Closed",
  ];

  final List<Map<String, dynamic>> cases = [
    {
      "status": "IN REVIEW",
      "statusColor": const Color(0xffC86BFF),
      "title": "Vanguard vs. Thorne Bio-Tech",
      "lawyer": "David Aira, Esq.",
      "description":
      "\"Drafted response to the preliminary injunction. Motion to dismiss pending judge's signature.\"",
    },
    {
      "status": "AWAITING SIGNATURE",
      "statusColor": Colors.grey,
      "title": "City of Aveline vs. ConstructCorp",
      "lawyer": "Sarah Jenkins, JD",
      "description":
      "\"Settlement offer finalized. Sent via LexisAI secure portal for client digital signature.\"",
    },
  ];

  void changeTab(int index) {
    selectedTab.value = index;
  }
}