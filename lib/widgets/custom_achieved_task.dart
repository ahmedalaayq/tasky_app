import 'package:flutter/material.dart';
import 'dart:math';

class CustomAchievedTask extends StatelessWidget {
  const CustomAchievedTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF282828),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Achieved Tasks',
                style: TextStyle(
                  color: Color(0xFFFFFCFC),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 2),
              Text(
                '3 Out of 6 Done',
                style: TextStyle(
                  color: Color(0xFFC6C6C6),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Transform.rotate(
                angle: -pi / 2,
                child: const CircularProgressIndicator(
                  strokeAlign: 1.4,
                  backgroundColor: Color(0xFF6D6D6D),
                  valueColor: AlwaysStoppedAnimation(Color(0xFF15B86C)),
                  value: 0.5,
                ),
              ),
              const Text(
                '50%',
                style: TextStyle(
                  color: Color(0xFFFFFCFC),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
