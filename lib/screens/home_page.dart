import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky/helper/helper.dart';
import 'package:tasky/services/preference_manager.dart';
import 'package:tasky/widgets/custom_top_home_section.dart';



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
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
           // TODO: Custom Top Home Section
              CustomTopHomeSection()
            ],
          ),
        ),
      ),
    );
  }
}
