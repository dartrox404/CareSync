import 'package:care_sync/core/const/app_sizes.dart';
import 'package:care_sync/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ReportPageCategory extends StatelessWidget {
  const ReportPageCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 100,
          height: 150,
          decoration: BoxDecoration(
            color: context.color.onSecondary,
            borderRadius: BorderRadius.circular(AppSizes.kradiusXl),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: context.color.primary,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/svg/test-tube-minimalistic-svgrepo-com.svg',
                    height: 40,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Test',
                    style: context.text.bodyMedium?.copyWith(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Full Blood',
                    style: context.text.bodySmall?.copyWith(
                      fontFamily: 'poppins',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 100,
          height: 150,
          decoration: BoxDecoration(
            color: context.color.tertiary,
            borderRadius: BorderRadius.circular(AppSizes.kradiusXl),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '92.5F',
                  style: context.text.bodyMedium?.copyWith(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Temperature',
                  style: context.text.bodySmall?.copyWith(
                    fontFamily: 'poppins',
                  ),
                ),
                const Gap(AppSizes.kspace8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSizes.kspace20,
                    horizontal: AppSizes.kspace16,
                  ),
                  decoration: BoxDecoration(
                    color: context.color.primary,
                    borderRadius: BorderRadius.circular(AppSizes.kradiusXl),
                  ),
                  child: SvgPicture.asset(
                    'assets/svg/temperature-low-svgrepo-com.svg',
                    height: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 100,
          height: 150,
          decoration: BoxDecoration(
            color: context.color.surface,
            borderRadius: BorderRadius.circular(AppSizes.kradiusXl),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'X-RAY',
                  style: context.text.bodyMedium?.copyWith(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSizes.kspace20,
                    horizontal: AppSizes.kspace16,
                  ),
                  decoration: BoxDecoration(
                    color: context.color.primary,
                    borderRadius: BorderRadius.circular(AppSizes.kradiusXl),
                  ),
                  child: SvgPicture.asset(
                    'assets/svg/bone-broken-svgrepo-com.svg',
                    height: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
