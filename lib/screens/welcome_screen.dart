import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasky/screens/widgets/custom_elevated_button.dart';
import 'package:tasky/screens/widgets/custom_primary_welcome_section.dart';
import 'package:tasky/screens/widgets/custom_text_form_field.dart';
import 'package:tasky/screens/widgets/custom_top_welcome_section.dart';
import 'package:tasky/screens/widgets/custom_welcome_placeholder_image.dart';

import 'home_page.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late GlobalKey<FormState> _key;

  @override
  void initState() {
    super.initState();
    _key = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    final String? plusJakartaSans = GoogleFonts.plusJakartaSans().fontFamily;
    final String? poppins = GoogleFonts.poppins().fontFamily;
    final String? roboto = GoogleFonts.roboto().fontFamily;

    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _key,
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
                CustomTextFormField(
                  poppins: poppins,
                  roboto: roboto,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Your Name';
                    }
                    return null;
                  },
                ),
                // TODO: Custom Elevated Button
                CustomElevatedButton(
                  poppins: poppins,
                  onPressed: () {
                    if (_key.currentState?.validate() ?? false) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
