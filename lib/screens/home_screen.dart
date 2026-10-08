import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

final List<String> _scareLevels = const [
  'Mildly Haunted',
  'Zombies Ahead',
  'Absolute Horror',
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // 0. AppHeader row
      appBar: const AppHeader(title: 'SpookyFind'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),
            // 1. Scare Level Dropdown
            const ScareLevelDropdown(),
            const SizedBox(height: 24),
            
            // 2. Map Placeholder
            const MapPlaceholder(),
            const SizedBox(height: 32),

            // 3. Camera & Gallery Action Button Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/home/YOUR_CAMERA_ICON.svg',
                    width: 40,
                    height: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/home/YOUR_GALLERY_ICON.svg',
                    width: 40,
                    height: 40,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
