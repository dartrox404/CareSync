import 'package:care_sync/core/const/app_sizes.dart';
import 'package:care_sync/core/extensions/app_extensions.dart';
import 'package:care_sync/data/model/colorlist.dart';
import 'package:care_sync/data/model/health_card_data.dart';
import 'package:care_sync/features/widgets/homepage_card.dart';
import 'package:care_sync/features/widgets/homepage_header.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.surface,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            vertical: AppSizes.kspace5,
            horizontal: AppSizes.kspace12,
          ),
          child: Column(
            children: [
              const HomepageHeader(),
              const Gap(AppSizes.kspace24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Customize',
                        style: context.text.headlineSmall?.copyWith(
                          fontFamily: 'poppins',
                        ),
                      ),
                      Text(
                        'Your plan',
                        style: context.text.bodyLarge?.copyWith(
                          fontFamily: 'rubik',
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: context.color.onTertiary,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Iconsax.filter),
                    ),
                  ),
                ],
              ),
              const Gap(AppSizes.kspace20),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: healthcardlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return HomepageCard(
                      x: healthcardlist[index],
                      color: colorslist[index % colorslist.length],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
