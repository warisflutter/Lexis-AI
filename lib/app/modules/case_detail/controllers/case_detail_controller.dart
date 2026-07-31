import 'package:get/get.dart';

class CaseDetailController extends GetxController {

  /// Header
  final caseId = "ACTIVE CASE • CIVIL-449".obs;

  final caseTitle =
      "Sterling vs. Global\nDynamics Intellectual\nProperty Dispute".obs;

  final lastUpdated =
      "Last Updated Today at 09:42 AM".obs;

  /// Lead Counsel
  final lawyerName = "Julian Thorne".obs;

  final lawyerRole = "LEAD COUNSEL".obs;

  final lawyerRank = "14.8/5 Elite Tier".obs;

  final lawyerImage =
      "https://i.pravatar.cc/300?img=12".obs;

  /// Progress
  final progress = 0.88.obs;

  final progressPercent = "88%".obs;

  final progressStatus =
      "In Motion • 12 Days Remaining".obs;

  /// Timeline
  final milestones = [
    {
      "title": "Deposition Scheduled",
      "date": "Dec 14",
      "description":
      "Cross-examination of chief technical officer regarding proprietary code leak.",
      "status": "Upcoming",
    },
    {
      "title": "Evidence Review Completed",
      "date": "Dec 08",
      "description":
      "AI analysis of 4,000+ internal emails completed.",
      "status": "Completed",
    },
    {
      "title": "Case Filed",
      "date": "Nov 22",
      "description":
      "Formal complaint lodged in District Court.",
      "status": "Completed",
    },
  ].obs;

  /// Vault

  final vaultFiles = [
    {
      "name": "Complaint_Final.pdf",
      "size": "2.4 MB",
      "type": "pdf",
    },
    {
      "name": "Evidence_Exhibit_A.png",
      "size": "9.8 MB",
      "type": "image",
    },
  ].obs;

  /// Notes

  final internalNote =
      "\"Defendant seems hesitant about the code-base phase. Leverage this in next settlement talk.\""
          .obs;

  void openVaultFile(Map file) {}

  void addInternalNote() {}

}