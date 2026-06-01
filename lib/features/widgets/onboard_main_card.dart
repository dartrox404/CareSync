import 'package:care_sync/core/const/app_sizes.dart';
import 'package:care_sync/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class OnboardMainCard extends StatelessWidget {
  const OnboardMainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushReplacement('/home'),
      child: Container(
        width: context.width * .95,
        height: context.height * .32,
        decoration: BoxDecoration(
          color: context.color.surface,
          borderRadius: BorderRadius.circular(AppSizes.kradiusXl),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppSizes.kspace10,
                horizontal: AppSizes.kspace12,
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: context.color.tertiary,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.check,
                            color: context.color.primary,
                          ),
                        ),
                      ),
                      const Gap(AppSizes.kspace8),
                      Text(
                        'Select your sum method',
                        style: context.text.bodyMedium?.copyWith(
                          fontFamily: 'rubik',
                          color: context.color.tertiary,
                        ),
                      ),
                    ],
                  ),
                  const Gap(AppSizes.kspace8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "\$20",
                              style: context.text.displayLarge?.copyWith(
                                fontFamily: 'poppins',
                              ),
                            ),
                            TextSpan(
                              text: 'K',
                              style: context.text.bodySmall?.copyWith(
                                fontFamily: 'rubik',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(AppSizes.kspace5),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Your Limit",
                              style: context.text.bodySmall?.copyWith(
                                fontFamily: 'poppins',
                                color: context.color.tertiary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 15,
              bottom: 90,
              child: Container(
                height: AppSizes.kspace24,
                width: context.width * .4,
                decoration: BoxDecoration(
                  color: context.color.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppSizes.kradiusXl),
                    bottomLeft: Radius.circular(AppSizes.kradiusXl),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 160,
              bottom: 90,
              child: Container(
                height: AppSizes.kspace24,
                width: context.width * .45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(AppSizes.kradiusXl),
                    bottomRight: Radius.circular(AppSizes.kradiusXl),
                  ),
                  color: context.color.tertiary,
                ),
              ),
            ),
            Positioned(
              left: 25,
              bottom: 91,
              child: Text(
                '40%',
                style: context.text.bodyMedium?.copyWith(
                  fontFamily: 'rubik',
                  color: context.color.secondary,
                ),
              ),
            ),
            Positioned(
              left: 25,
              bottom: 68,
              child: Text(
                'min',
                style: context.text.bodyMedium?.copyWith(
                  fontFamily: 'rubik',
                  color: context.color.tertiary,
                ),
              ),
            ),
            Positioned(
              right: 25,
              bottom: 68,
              child: Text(
                'max',
                style: context.text.bodyMedium?.copyWith(
                  fontFamily: 'rubik',
                  color: context.color.tertiary,
                ),
              ),
            ),
            Positioned(
              right: 25,
              bottom: 15,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.kradiusXl),
                  border: Border.all(color: context.color.tertiary),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSizes.kspace8,
                    horizontal: AppSizes.kspace12,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Iconsax.edit),
                      const Gap(AppSizes.kspace5),
                      Text(
                        'edit',
                        style: context.text.titleMedium?.copyWith(
                          fontFamily: 'poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
