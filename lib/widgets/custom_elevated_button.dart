import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.poppins, required this.onPressed, required this.buttonName});

  final String? poppins;
  final VoidCallback onPressed;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF15B86C),
          foregroundColor: Colors.white,
          fixedSize: Size(MediaQuery.of(context).size.width, 40),
        ),
        onPressed: onPressed,
        child: Text(
          'Add Task',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontFamily: poppins,
          ),
        ),
      ),
    );
  }
}
