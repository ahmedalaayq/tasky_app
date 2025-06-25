import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky/helper/helper.dart';
import 'package:tasky/services/preference_manager.dart';
class CustomUpperTopSection extends StatelessWidget {
  const CustomUpperTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return        Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'almost done ! ',
          style: TextStyle(
            color: Color(0xFFFFFCFC),
            fontSize: 32,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(width: 8),
        SvgPicture.asset('assets/images/waving_hand.svg'),
      ],
    );
  }
}
