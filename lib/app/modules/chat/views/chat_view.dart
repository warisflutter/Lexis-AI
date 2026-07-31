import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/chat_controller.dart';
import '../widgets/chat_filter.dart';
import '../widgets/chat_header.dart';
import '../widgets/chat_search.dart';
import '../widgets/chat_tile.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xff17121F),

      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: const Color(0xffA855F7),
      //   elevation: 8,
      //   onPressed: () {},
      //   child: const Icon(
      //     Icons.chat_rounded,
      //     color: Colors.white,
      //   ),
      // ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 12),

              /// Header
              const ChatHeader(),

              const SizedBox(height: 12),

              /// Search
              ChatSearch(
                controller: searchController,
                onChanged: (value) {
                  controller.searchText.value = value;
                },
              ),

              const SizedBox(height: 12),

              /// Filters
              Obx(
                    () => ChatFilter(
                  filters: controller.filters,
                  selectedIndex: controller.selectedFilter.value,
                  onSelected: controller.changeFilter,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                "RECENT CONVERSATIONS",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 11,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),

              /// Chat List
              Expanded(
                child: Obx(
                      () => ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: controller.filteredChats.length,
                    itemBuilder: (context, index) {

                      final chat =
                      controller.filteredChats[index];

                      return ChatTile(
                        chat: chat,
                        onTap: () {
                          Get.toNamed(
                            Routes.CHAT_DETAIL,
                            arguments: chat,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}