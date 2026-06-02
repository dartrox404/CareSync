import 'package:action_slider/action_slider.dart';
import 'package:care_sync/core/const/app_sizes.dart';
import 'package:care_sync/core/extensions/app_extensions.dart';
import 'package:care_sync/data/model/health_card_data.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class HomepageCard extends StatelessWidget {
  const HomepageCard({super.key, required this.x, this.color});
  final HealthCardData x;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSizes.kspace8),
      width: double.infinity,
      height: context.height * .35,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppSizes.kspace24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.kspace10,
          horizontal: AppSizes.kspace12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                    borderRadius: BorderRadius.circular(AppSizes.kspace32),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: AppSizes.kspace5,
                      horizontal: AppSizes.kspace16,
                    ),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: x.totalprice,
                            style: context.text.bodyLarge?.copyWith(
                              fontFamily: 'poppins',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_outward,
                  size: AppSizes.kspace32,
                  color: context.color.secondary,
                ),
              ],
            ),
            Text(
              x.name,
              style: context.text.headlineLarge?.copyWith(
                fontFamily: 'poppins',
                color: context.color.secondary,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  x.category,
                  style: context.text.bodySmall?.copyWith(
                    fontFamily: 'poppins',
                    color: context.color.secondary,
                  ),
                ),
                Text(
                  x.monthlyprice,
                  style: context.text.titleLarge?.copyWith(
                    fontFamily: 'poppins',
                    color: context.color.secondary,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionSlider.standard(
                  width: 220,
                  height: 45,
                  toggleColor: context.color.primary,
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: context.color.secondary,
                    size: AppSizes.kiconMd,
                  ),
                  child: Text(
                    '   Drag to Register >>',
                    style: context.text.bodyMedium?.copyWith(
                      fontFamily: 'poppins',
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: context.color.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Iconsax.edit, color: context.color.secondary),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
