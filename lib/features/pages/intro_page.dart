import 'package:care_sync/features/pages/home_page.dart';
import 'package:care_sync/features/pages/onboarding_page.dart';
import 'package:care_sync/features/pages/report_page.dart';
import 'package:care_sync/features/pages/setting_page.dart';
import 'package:care_sync/features/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int tracker = 0;
  final List<Widget> pages = [
    OnboardingPage(),
    HomePage(),
    ReportPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          pages[tracker],
          Positioned(
            left: 65,
            bottom: 25,
            child: CustomBottomNavigationBar(
              ontap: (index) {
                setState(() {
                  tracker = index;
                });
              },
              tracker: tracker,
            ),
          ),
        ],
      ),
    );
  }
}
