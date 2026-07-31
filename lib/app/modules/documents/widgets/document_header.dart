import 'package:flutter/material.dart';

class DocumentHeader extends StatelessWidget {
  const DocumentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [

        SizedBox(height: 10),

        Text(
          "Secure Documents\nVault",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            height: 1.05,
            fontWeight: FontWeight.bold,
            fontFamily: "Georgia",
          ),
        ),
      ],
    );
  }
}