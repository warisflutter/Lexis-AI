import 'package:get/get.dart';

import '../../../data/lawyer_model.dart';

class FindLawyerController extends GetxController{

  RxInt selectedCategory=0.obs;

  List<String> categories = [
    "All",
    "Criminal",
    "Family",
    "Civil",
    "Corporate",
    "Property",
    "Immigration",
    "Tax",
    "Employment",
    "Cyber",
    "Business",
    "Constitutional",
  ];

  void changeCategory(int index){

    selectedCategory.value=index;

  }

  RxList<LawyerModel> lawyers = <LawyerModel>[
    LawyerModel(
      name: "Elena Moretti, J.D.",
      rating: 4.9,
      reviews: 124,
      type: "Criminal Law",
      experience: "12 Years Exp.",
      description:
      "Specializing in complex white-collar defense and high-stakes litigation.",
    ),
    LawyerModel(
      name: "Marcus Thorne",
      rating: 4.7,
      reviews: 89,
      type: "Corporate Law",
      experience: "8 Years Exp.",
      description:
      "Expert in M&A, venture capital financing and intellectual property.",
    ),
    LawyerModel(
      name: "Sarah Jenkins",
      rating: 5.0,
      reviews: 54,
      type: "Property Law",
      experience: "20 Years Exp.",
      description:
      "Renowned specialist in high-value real estate transactions.",
    ),
  ].obs;
}