import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      width: double.infinity,
      height: 56,

      child: ElevatedButton(

        onPressed: () {},

        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffD16CFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),

        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Submit Case",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),

            SizedBox(width: 8),

            Icon(
              Icons.send_outlined,
              color: Colors.white,
              size: 20,
            ),

          ],
        ),
      ),
    );
  }
}