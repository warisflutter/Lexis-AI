import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/case_detail_controller.dart';

import '../widgets/case_header.dart';
import '../widgets/floating_note_btn.dart';
import '../widgets/lead_counsel_card.dart';
import '../widgets/case_progress_card.dart';
import '../widgets/milestone_timeline.dart';
import '../widgets/vault_section.dart';
import '../widgets/internal_notes.dart';

class CaseDetailView extends GetView<CaseDetailController> {
  const CaseDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff170022),

      floatingActionButton: const FloatingNoteButton(),

      appBar: AppBar(
        backgroundColor: const Color(0xff170022),
        elevation: 0,
        automaticallyImplyLeading: false,

        titleSpacing: 18,

        title: Row(
          children: const [

            Icon(
              Icons.gavel_rounded,
              color: Color(0xffC37BFF),
              size: 22,
            ),

            SizedBox(width: 8),

            Text(
              "LexisAI",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          ],
        ),

        actions: [

          IconButton(
            onPressed: () {

            },
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Colors.white,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(
                "https://i.pravatar.cc/300?img=12",
              ),
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [

              SizedBox(height: 16),

              /// Header
              CaseHeader(),

              SizedBox(height: 20),

              /// Lawyer Card
              LeadCounselCard(),

              SizedBox(height: 18),

              /// Progress Card
              CaseProgressCard(),

              SizedBox(height: 22),

              /// Timeline
              MilestoneTimeline(),

              SizedBox(height: 22),

              /// Vault
              VaultSection(),

              SizedBox(height: 22),

              /// Notes
              InternalNotes(),

              SizedBox(height: 90),
            ],
          ),
        ),
      ),
    );
  }
}