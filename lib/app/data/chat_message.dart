class ChatMessage {

  final String message;
  final bool isMe;
  final bool isVoice;
  final String time;

  ChatMessage({
    required this.message,
    required this.isMe,
    required this.isVoice,
    required this.time,
  });

}