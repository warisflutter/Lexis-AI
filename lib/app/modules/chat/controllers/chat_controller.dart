import 'package:get/get.dart';

import '../../../data/chat_model.dart';

class ChatController extends GetxController {

  /// Selected Filter
  final selectedFilter = 0.obs;

  final filters = [
    "All",
    "Lawyers",
    "Clients",
    "AI",
  ];

  /// Search
  final searchText = "".obs;

  /// Chat List
  final chats = <ChatModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadChats();
  }

  void changeFilter(int index) {
    selectedFilter.value = index;
  }

  void loadChats() {

    chats.assignAll([

      /// AI
      ChatModel(
        name: "Lexis AI",
        image:
        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=400",
        role: "AI",
        specialization: "Legal Assistant",
        lastMessage:
        "I've analyzed the new contract draft. Typing...",
        time: "Now",
        isOnline: true,
        isTyping: true,
        isPinned: true,
        isVerified: false,
        isUnread: true,
        unreadCount: 1,
      ),

      /// Lawyer
      ChatModel(
        name: "Sarah Sterling, JD",
        image:
        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=400",
        role: "LAWYER",
        specialization: "Intellectual Property",
        lastMessage:
        "The deposition transcript is now available.",
        time: "10:45",
        isOnline: true,
        isTyping: false,
        isPinned: false,
        isVerified: true,
        isUnread: true,
        unreadCount: 3,
      ),

      ChatModel(
        name: "Julian Thorne, JD",
        image:
        "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=400",
        role: "LAWYER",
        specialization: "Corporate Litigation",
        lastMessage:
        "Drafted response to the injunction request.",
        time: "Yesterday",
        isOnline: false,
        isTyping: false,
        isPinned: false,
        isVerified: true,
        isUnread: false,
        unreadCount: 0,
      ),

      ChatModel(
        name: "Jonathan Doe",
        image:
        "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=400",
        role: "CLIENT",
        specialization: "",
        lastMessage:
        "Thank you for the update.",
        time: "2d ago",
        isOnline: false,
        isTyping: false,
        isPinned: false,
        isVerified: false,
        isUnread: false,
        unreadCount: 0,
      ),

      ChatModel(
        name: "Elena Moretti, JD",
        image:
        "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=400",
        role: "LAWYER",
        specialization: "Criminal Law",
        lastMessage:
        "Motion to dismiss has been submitted.",
        time: "3d ago",
        isOnline: false,
        isTyping: false,
        isPinned: false,
        isVerified: true,
        isUnread: false,
        unreadCount: 0,
      ),
    ]);
  }

  List<ChatModel> get filteredChats {

    switch (selectedFilter.value) {

      case 1:
        return chats.where((e) => e.role == "LAWYER").toList();

      case 2:
        return chats.where((e) => e.role == "CLIENT").toList();

      case 3:
        return chats.where((e) => e.role == "AI").toList();

      default:
        return chats;
    }
  }
}