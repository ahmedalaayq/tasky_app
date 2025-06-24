import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomWelcomePlaceholderImage extends StatelessWidget {
  const CustomWelcomePlaceholderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      width: 214,
      height: 214,
      'assets/images/welcome_placeholder.svg',
    );
  }
}
