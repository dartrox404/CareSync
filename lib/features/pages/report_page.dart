import 'package:care_sync/core/const/app_sizes.dart';
import 'package:care_sync/core/extensions/app_extensions.dart';
import 'package:care_sync/features/widgets/report_page_card.dart';
import 'package:care_sync/features/widgets/report_page_category.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: context.color.secondary,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Iconsax.add),
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.color.secondary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Iconsax.menu),
                    ),
                  ),
                  const Gap(AppSizes.kspace8),
                  Container(
                    decoration: BoxDecoration(
                      color: context.color.secondary,
                      borderRadius: BorderRadius.circular(AppSizes.kradiusXl),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppSizes.kspace8,
                        horizontal: AppSizes.kspace12,
                      ),
                      child: Text(
                        'Services',
                        style: context.text.bodyMedium?.copyWith(
                          fontFamily: 'poppins',
                          color: context.color.primary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  const Gap(AppSizes.kspace24),
                  const ReportPageCard(),
                  const Gap(AppSizes.kspace16),
                  Text(
                    'Checkups',
                    style: context.text.titleLarge?.copyWith(
                      fontFamily: 'poppins',
                      color: context.color.secondary,
                    ),
                  ),
                  const Gap(AppSizes.kspace16),
                  const ReportPageCategory(),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
