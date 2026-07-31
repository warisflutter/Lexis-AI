import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileSettingHeader extends StatelessWidget {
  const ProfileSettingHeader({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 18,
      ),

      child: Row(
        children: [

          InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: (){
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 20,
            ),
          ),

          const SizedBox(width: 12),

          const Expanded(
            child: Text(
              "Settings",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              color: const Color(0xff24162F),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.white12,
              ),
            ),
            child: const Icon(
              Icons.tune,
              color: Colors.greenAccent,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}