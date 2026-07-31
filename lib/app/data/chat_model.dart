class ChatModel {
  final String name;
  final String image;
  final String role;
  final String specialization;
  final String lastMessage;
  final String time;

  final bool isOnline;
  final bool isTyping;
  final bool isPinned;
  final bool isVerified;
  final bool isUnread;

  final int unreadCount;

  ChatModel({
    required this.name,
    required this.image,
    required this.role,
    required this.specialization,
    required this.lastMessage,
    required this.time,
    required this.isOnline,
    required this.isTyping,
    required this.isPinned,
    required this.isVerified,
    required this.isUnread,
    required this.unreadCount,
  });
}