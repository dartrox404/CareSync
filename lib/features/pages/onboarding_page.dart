import 'package:care_sync/core/extensions/app_extensions.dart';
import 'package:care_sync/features/widgets/custom_bottom_navigation_bar.dart';
import 'package:care_sync/features/widgets/onboard_main_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: context.width,
        height: context.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: AlignmentGeometry.bottomCenter,
            begin: AlignmentGeometry.topStart,
            colors: [Color(0xff808494), Color(0xffcfdfe8)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              right: -50,
              top: 80,
              child: Image.asset(
                'assets/image/background.webp',
                height: context.height * .7,
              ),
            ),
            Positioned(
              left: 20,
              top: 30,
              child: Container(
                decoration: BoxDecoration(
                  color: context.color.primary,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Iconsax.add, color: context.color.secondary),
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 30,
              child: Container(
                decoration: BoxDecoration(
                  color: context.color.primary,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Iconsax.notification,
                    color: context.color.secondary,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 70,
              top: 38,
              child: Text(
                'Hi, Olivia',
                style: context.text.bodyLarge?.copyWith(
                  fontFamily: 'poppins',
                  color: context.color.secondary,
                ),
              ),
            ),
            Positioned(
              left: 15,
              top: 280,
              child: Text(
                'Add New\nInsurance',
                style: context.text.headlineMedium?.copyWith(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.normal,
                  color: context.color.secondary,
                ),
              ),
            ),
            Positioned(left: 10, bottom: 90, child: OnboardMainCard()),
          ],
        ),
      ),
    );
  }
}
