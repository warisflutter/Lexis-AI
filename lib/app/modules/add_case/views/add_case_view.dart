import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/add_case_controller.dart';
import '../widgets/ai_note_card.dart';
import '../widgets/attachement_box.dart';
import '../widgets/category_dropdown.dart';
import '../widgets/description_file.dart';
import '../widgets/progress_stepper.dart';
import '../widgets/submit_btn.dart';
import '../widgets/title_field.dart';
import '../widgets/urgency_selector.dart';

class AddCaseView extends GetView<AddCaseController> {
  const AddCaseView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddCaseController());

    return Scaffold(
      backgroundColor: const Color(0xff170022),

      appBar: AppBar(
        backgroundColor: const Color(0xff21102D),
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,

        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
            size: 20,
          ),
        ),

        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [

            Icon(
              Icons.balance,
              color: Colors.white,
              size: 20,
            ),

            SizedBox(width: 6),

            Text(
              "LexisAI",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        actions: [

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),

        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 10),

              const ProgressStepper(),

              const SizedBox(height: 25),

              Container(

                padding: const EdgeInsets.all(18),

                decoration: BoxDecoration(

                  color: const Color(0xff21102D),

                  borderRadius: BorderRadius.circular(16),

                  border: Border.all(
                    color: Colors.white.withOpacity(.06),
                  ),

                ),

                child: const Column(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    TitleField(),

                    SizedBox(height:20),

                    CategoryDropdown(),

                    SizedBox(height:20),

                    UrgencySelector(),

                    SizedBox(height:20),

                    DescriptionField(),

                    SizedBox(height:20),

                    AttachmentBox(),

                  ],

                ),

              ),
              const SizedBox(height: 25),

              const SubmitButton(),

              const SizedBox(height: 25),

              const AiNoteCard(),

              const SizedBox(height: 30),

            ],
          ),
        ),
      ),
    );
  }
}