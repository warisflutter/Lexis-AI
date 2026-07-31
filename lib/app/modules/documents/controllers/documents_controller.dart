import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DocumentsController extends GetxController {

  final searchController = TextEditingController();

  final selectedFilter = 0.obs;

  final filters = [
    "All Files",
    "PDFs",
    "Evidence",
    "Case",
  ];

  final documents = [
    {
      "icon": Icons.picture_as_pdf_rounded,
      "title": "NDA_Draft_v4.pdf",
      "date": "Last modified: Oct 24, 2023",
      "size": "2.4 MB",
      "type": "DOCUMENT",
      "color": const Color(0xffC76B5D),
    },
    {
      "icon": Icons.gavel_rounded,
      "title": "Evidence_Video_09.mp4",
      "date": "Last modified: Oct 23, 2023",
      "size": "562.3 MB",
      "type": "EVIDENCE",
      "color": const Color(0xff8D61FF),
    },
    {
      "icon": Icons.description_outlined,
      "title": "Deposition_Transcript_Final",
      "date": "Last modified: Oct 19, 2023",
      "size": "895 KB",
      "type": "TRANSCRIPT",
      "color": const Color(0xffB99CFF),
    },
    {
      "icon": Icons.folder_copy_outlined,
      "title": "Full_Discovery_Archive",
      "date": "Last modified: Oct 15, 2023",
      "size": "1.2 GB",
      "type": "CASE",
      "color": const Color(0xffA855F7),
    },
  ];

  void changeFilter(int index) {
    selectedFilter.value = index;
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}