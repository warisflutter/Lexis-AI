import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/chat_message.dart';
import '../../../data/chat_model.dart';

class ChatDetailController extends GetxController {
  late ChatModel chat;

  /// Text Controller
  final TextEditingController messageController =
  TextEditingController();

  /// Scroll Controller
  final ScrollController scrollController =
  ScrollController();

  /// Messages
  final RxList<ChatMessage> messages = <ChatMessage>[].obs;

  @override
  void onInit() {
    super.onInit();

    chat = Get.arguments as ChatModel;

    /// Dummy Messages
    messages.addAll([
      ChatMessage(
        message:
        "Hello, I've reviewed the deposition transcript you've shared. There's a significant inconsistency on page 42 regarding the timeline of events.",
        isMe: false,
        isVoice: false,
        time: "11:32 AM",
      ),

      ChatMessage(
        message:
        "I've highlighted the key contradictions. Please review the attached document and let me know if you need a deeper legal analysis.",
        isMe: false,
        isVoice: false,
        time: "11:36 AM",
      ),

      ChatMessage(
        message:
        "Understood Arthur. I'm reviewing the highlighted pages now. I'll get back to you shortly with my observations.",
        isMe: true,
        isVoice: false,
        time: "11:40 AM",
      ),

      ChatMessage(
        message: "0:26",
        isMe: true,
        isVoice: true,
        time: "11:42 AM",
      ),
    ]);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollToBottom();
    });
  }

  /// Send Text Message
  void sendMessage() {
    final text = messageController.text.trim();

    if (text.isEmpty) return;

    messages.add(
      ChatMessage(
        message: text,
        isMe: true,
        isVoice: false,
        time: TimeOfDay.now().format(Get.context!),
      ),
    );

    messageController.clear();

    Future.delayed(const Duration(milliseconds: 80), () {
      scrollToBottom();
    });
  }

  /// Dummy Voice Message
  void sendVoiceMessage() {
    messages.add(
      ChatMessage(
        message: "0:26",
        isMe: true,
        isVoice: true,
        time: TimeOfDay.now().format(Get.context!),
      ),
    );

    Future.delayed(const Duration(milliseconds: 80), () {
      scrollToBottom();
    });
  }

  /// Auto Scroll
  void scrollToBottom() {
    if (!scrollController.hasClients) return;

    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeOut,
    );
  }

  @override
  void onClose() {
    messageController.dispose();
    scrollController.dispose();
    super.onClose();
  }
}