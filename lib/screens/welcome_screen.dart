import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasky/screens/widgets/custom_elevated_button.dart';
import 'package:tasky/screens/widgets/custom_primary_welcome_section.dart';
import 'package:tasky/screens/widgets/custom_text_form_field.dart';
import 'package:tasky/screens/widgets/custom_top_welcome_section.dart';
import 'package:tasky/screens/widgets/custom_welcome_placeholder_image.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String? plusJakartaSans = GoogleFonts.plusJakartaSans().fontFamily;
    final String? poppins = GoogleFonts.poppins().fontFamily;
    final String? roboto = GoogleFonts.roboto().fontFamily;

    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 6),

              /// TODO: custom top welcome section
              CustomTopWelcomeSection(fontFamily: plusJakartaSans),
              const SizedBox(height: 118),

              /// TODO: Custom Primary Welcome Section
              CustomPrimaryWelcomeSection(fontFamily: plusJakartaSans),
              const SizedBox(height: 24),
              // TODO: Custom Welcome Place Holder Image
              const CustomWelcomePlaceholderImage(),
              const SizedBox(height: 28),

              /// TODO: Custom Text Form Field
              CustomTextFormField(poppins: poppins, roboto: roboto),
              // TODO: Custom Elevated Button
              CustomElevatedButton(poppins: poppins),
            ],
          ),
        ),
      ),
    );
  }
}
