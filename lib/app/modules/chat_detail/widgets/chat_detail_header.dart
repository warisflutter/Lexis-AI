import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatDetailHeader extends StatelessWidget
    implements PreferredSizeWidget {
  final String name;
  final String role;
  final String image;

  const ChatDetailHeader({
    super.key,
    required this.name,
    required this.role,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff17121F),
      elevation: 0,
      automaticallyImplyLeading: false,

      leading: IconButton(
        splashRadius: 22,
        onPressed: () => Get.back(),
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
          size: 20,
        ),
      ),

      titleSpacing: 0,

      title: Row(
        children: [

          Stack(
            children: [

              CircleAvatar(
                radius: 22,
                backgroundImage: NetworkImage(image),
              ),

              Positioned(
                right: 1,
                bottom: 1,
                child: Container(
                  height: 11,
                  width: 11,
                  decoration: BoxDecoration(
                    color: const Color(0xff32D74B),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xff17121F),
                      width: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 2),

                Row(
                  children: [

                    Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                        color: Color(0xff32D74B),
                        shape: BoxShape.circle,
                      ),
                    ),

                    const SizedBox(width: 5),

                    Text(
                      role.toUpperCase(),
                      style: const TextStyle(
                        color: Color(0xffA59DB4),
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),

      actions: [

        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.videocam_outlined,
            color: Colors.white,
          ),
        ),

        PopupMenuButton(
          color: const Color(0xff2A2234),
          icon: const Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          itemBuilder: (_) => const [

            PopupMenuItem(
              value: 1,
              child: Text("View Profile"),
            ),

            PopupMenuItem(
              value: 2,
              child: Text("Clear Chat"),
            ),

          ],
        ),

        const SizedBox(width: 6)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}