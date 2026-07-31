import 'package:flutter/material.dart';

class CategoryDropdown extends StatefulWidget {
  const CategoryDropdown({super.key});

  @override
  State<CategoryDropdown> createState() => _CategoryDropdownState();
}

class _CategoryDropdownState extends State<CategoryDropdown> {

  String value = "Corporate Litigation";

  final items = [

    "Corporate Litigation",
    "Criminal Law",
    "Civil Law",
    "Family Law",
    "Property Law",

  ];

  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        const Text(
          "CATEGORY",
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
            fontSize: 11,
          ),
        ),

        const SizedBox(height: 8),

        Container(

          padding: const EdgeInsets.symmetric(horizontal: 15),

          decoration: BoxDecoration(

            color: const Color(0xff21172A),

            borderRadius: BorderRadius.circular(12),

          ),

          child: DropdownButtonHideUnderline(

            child: DropdownButton<String>(

              dropdownColor: const Color(0xff21172A),

              value: value,

              isExpanded: true,

              iconEnabledColor: Colors.white,

              style: const TextStyle(color: Colors.white),

              items: items.map((e){

                return DropdownMenuItem(
                  value: e,
                  child: Text(e),
                );

              }).toList(),

              onChanged: (v){

                setState(() {

                  value = v!;

                });

              },

            ),

          ),

        )

      ],

    );

  }
}