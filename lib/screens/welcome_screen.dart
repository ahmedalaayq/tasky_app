import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky/screens/widgets/custom_top_welcome_section.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 6),
         /// TODO: custom top welcome section
            const CustomTopWelcomeSection(),
          ],
        ),
      ),
    );
  }
}
