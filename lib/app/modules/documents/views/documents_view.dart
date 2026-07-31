import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/documents_controller.dart';
import '../widgets/document_appbar.dart';
import '../widgets/document_card.dart';
import '../widgets/document_filter_chip.dart';
import '../widgets/document_header.dart';
import '../widgets/document_search.dart';
import '../widgets/priority_case_card.dart';

class DocumentsView extends GetView<DocumentsController> {
  const DocumentsView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xff14001E),

      // floatingActionButton: FloatingActionButton(
      //
      //   backgroundColor: const Color(0xffC017FF),
      //
      //   onPressed: () {},
      //
      //   child: const Icon(Icons.add,color: Colors.white),
      //
      // ),

      body: SafeArea(

        child: Padding(

          padding: const EdgeInsets.symmetric(horizontal: 18),

          child: Column(

            children: [

              const SizedBox(height: 15),

              const DocumentAppBar(),

              const SizedBox(height: 15),

              const DocumentHeader(),

              const SizedBox(height: 30),

              DocumentSearch(
                controller: controller.searchController,
              ),

              const SizedBox(height: 18),

              SizedBox(
                height: 38,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.filters.length,
                  itemBuilder: (context, index) {
                    return Obx(
                          () => DocumentFilterChip(
                        title: controller.filters[index],
                        selected: controller.selectedFilter.value == index,
                        onTap: () {
                          controller.changeFilter(index);
                        },
                      ),
                    );
                  },
                ),
              ),

              // const SizedBox(height: 22),
              //
              // const PriorityCaseCard(),

              const SizedBox(height: 20),

              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: controller.documents.length,
                  itemBuilder: (context, index) {
                    return DocumentCard(
                      data: controller.documents[index],
                    );
                  },
                ),
              ),

            ],

          ),

        ),

      ),

    );
  }
}