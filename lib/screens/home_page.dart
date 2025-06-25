import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky/helper/helper.dart';
import 'package:tasky/services/preference_manager.dart';
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
              CustomUpperTopSection(),
            ],
          ),
        ),
      ),
    );
  }
}
