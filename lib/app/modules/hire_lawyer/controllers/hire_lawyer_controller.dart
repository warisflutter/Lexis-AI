import 'package:get/get.dart';

class HireLawyerController extends GetxController {

  final lawyerName = "Julian Thorne".obs;
  final degree = "J.D.".obs;

  final rating = 4.9.obs;
  final totalReviews = 124.obs;

  final experience = "14+".obs;

  final consultationFee = "\$450/hr".obs;

  final winRate = "92% Success".obs;

  final biography =
      '''
Julian Thorne is a distinguished litigator known for his strategic prowess in complex corporate disputes.

With a career spanning over a decade of the intersection of technology and law, Julian has successfully represented Fortune 500 companies in multi-district class actions.

He combines a traditional, methodical legal approach with cutting-edge AI-assisted discovery tools to provide his clients with unparalleled intellectual advantage in the courtroom.
'''
          .obs;

  final specializations = <String>[
    "Class Action",
    "Intellectual Property",
    "Corporate",
    "Collar Defense",
  ].obs;

  final education = <Map<String, String>>[
    {
      "title": "Harvard Law School",
      "subtitle": "Juris Doctor (J.D.), Magna Cum Laude"
    },
    {
      "title": "Senior Partner at Thorne & Associates",
      "subtitle": "2018 - Present"
    },
  ].obs;

  void hireLawyer() {}

  void chatNow() {}
}