import 'package:flutter/material.dart';

class UrgencySelector extends StatefulWidget {
  const UrgencySelector({super.key});

  @override
  State<UrgencySelector> createState() => _UrgencySelectorState();
}

class _UrgencySelectorState extends State<UrgencySelector> {

  int selected = 0;

  final levels = [
    "Low",
    "Medium",
    "High",
  ];

  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        const Text(
          "URGENCY LEVEL",
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
            fontSize: 11,
          ),
        ),

        const SizedBox(height: 10),

        Row(

          children: List.generate(levels.length, (index){

            final active = selected == index;

            return Expanded(

              child: Padding(

                padding: EdgeInsets.only(
                    right: index == 2 ? 0 : 8),

                child: GestureDetector(

                  onTap: (){

                    setState(() {

                      selected = index;

                    });

                  },

                  child: Container(

                    height: 42,

                    decoration: BoxDecoration(

                      color: active
                          ? const Color(0xffD16CFF)
                          : const Color(0xff21172A),

                      borderRadius: BorderRadius.circular(10),

                    ),

                    child: Center(

                      child: Text(

                        levels[index],

                        style: TextStyle(

                          color: active
                              ? Colors.white
                              : Colors.white60,

                          fontWeight: FontWeight.bold,

                        ),

                      ),

                    ),

                  ),

                ),

              ),

            );

          }),

        )

      ],

    );

  }
}