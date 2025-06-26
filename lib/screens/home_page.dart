import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasky/helper/helper.dart';
import 'package:tasky/screens/add_task_page.dart';
import 'package:tasky/screens/welcome_page.dart';
import 'package:tasky/services/preference_manager.dart';
import 'package:tasky/widgets/custom_achieved_task.dart';
import 'package:tasky/widgets/custom_top_home_section.dart';
import 'package:tasky/widgets/custom_upper_top_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final String? poppins = GoogleFonts.poppins().fontFamily;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TODO: Custom Top Home Section
              const CustomTopHomeSection(),
              const SizedBox(height: 16),
              const Text(
                'Yuhuu ,Your work Is ',
                style: TextStyle(
                  color: Color(0xFFFFFCFC),
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 4),
              const CustomUpperTopSection(),
              const SizedBox(height: 16),

              /// TODO: Custom Achieved Task Widget
              const CustomAchievedTask(),
              const SizedBox(height: 80),
              Text(
                'My Tasks',
                style: TextStyle(
                  color: const Color(0xFFFFFCFC),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: poppins,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.36,
        height: 42,
        child: FloatingActionButton.extended(
          icon: const Icon(Icons.add),
          isExtended: true,
          backgroundColor: const Color(0xFF15B86C),
          foregroundColor: const Color(0xFFFFFCFC),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          label: Text(
            'Add New Task',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: poppins,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddTaskPage()),
            );
          },
        ),
      ),
    );
  }
}
