import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/chat_detail_controller.dart';
import '../widgets/ai_message_bubble.dart';
import '../widgets/chat_detail_header.dart';
import '../widgets/date_separator.dart';
import '../widgets/message_input.dart';
import '../widgets/user_message_bubble.dart';
import '../widgets/voice_message.dart';

class ChatDetailView extends GetView<ChatDetailController> {
  const ChatDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff17121F),

      appBar: ChatDetailHeader(
        name: controller.chat.name,
        role: controller.chat.role,
        image: controller.chat.image,
      ),

      body: Column(
        children: [

          Expanded(
            child: Obx(
                  () => ListView.builder(
                controller: controller.scrollController,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 20,
                ),
                itemCount: controller.messages.length + 1,

                itemBuilder: (context, index) {

                  if (index == 0) {
                    return const DateSeparator(
                      title: "Today, October 24",
                    );
                  }

                  final message =
                  controller.messages[index - 1];

                  if (message.isVoice) {
                    return VoiceMessage(
                      duration: message.message,
                    );
                  }

                  if (message.isMe) {
                    return UserMessageBubble(
                      message: message.message,
                      time: message.time,
                    );
                  }

                  return AiMessageBubble(
                    message: message.message,
                    time: message.time,
                  );
                },
              ),
            ),
          ),

          MessageInput(
            controller: controller.messageController,
            onSend: controller.sendMessage,
          ),
        ],
      ),
    );
  }
}