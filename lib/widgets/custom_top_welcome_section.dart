import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTopWelcomeSection extends StatelessWidget {
  const CustomTopWelcomeSection({super.key, required this.fontFamily});

  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(width: 42, height: 42, 'assets/images/tasky_logo.svg'),
        const SizedBox(width: 16),
        Text(
          'Tasky',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            color: const Color(0xFFFFFFFF),
            fontFamily: fontFamily,
          ),
        ),
      ],
    );
  }
}
