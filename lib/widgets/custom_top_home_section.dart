import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky/helper/helper.dart';
import 'package:tasky/services/preference_manager.dart';
class CustomTopHomeSection extends StatefulWidget {
  const CustomTopHomeSection({super.key});

  @override
  State<CustomTopHomeSection> createState() => _CustomTopHomeSectionState();
}

class _CustomTopHomeSectionState extends State<CustomTopHomeSection> {
  late String? userName;

  @override
  void initState() {
    userName = PreferenceManager().getString(key: 'userName') ?? "";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.asset('assets/images/home_avatar.png'),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Evening ,${userName!.capitalizeEachWord()}',
                  style: const TextStyle(
                    color: Color(0xFFFFFCFC),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  'One task at a time.One step closer.',
                  style: TextStyle(
                    color: Color(0xFFC6C6C6),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
        SvgPicture.asset('assets/images/light_icon.svg'),
      ],
    );
  }
}
