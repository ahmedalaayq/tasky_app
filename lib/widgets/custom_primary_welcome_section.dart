import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomPrimaryWelcomeSection extends StatelessWidget {
  const CustomPrimaryWelcomeSection({super.key, required this.fontFamily});

  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              'Welcome To Tasky ',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                fontFamily: fontFamily,
                color: const Color(0xFFFFFCFC),
              ),
            ),
            const SizedBox(width: 8),
            SvgPicture.asset(
              width: 28,
              height: 28,
              'assets/images/waving_hand.svg',
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'Your productivity journey starts here.',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: fontFamily,
            letterSpacing: 0.5,
            color: const Color(0xFFFFFCFC),
          ),
        ),
      ],
    );
  }
}
