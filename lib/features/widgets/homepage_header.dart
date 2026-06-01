import 'package:care_sync/core/const/app_sizes.dart';
import 'package:care_sync/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class HomepageHeader extends StatelessWidget {
  const HomepageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: context.color.onTertiary,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_back, color: context.color.primary),
          ),
        ),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            color: context.color.primary,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Iconsax.search_normal, color: context.color.secondary),
          ),
        ),
        const Gap(AppSizes.kspace8),
        Container(
          decoration: BoxDecoration(
            color: context.color.primary,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Iconsax.notification, color: context.color.secondary),
          ),
        ),
      ],
    );
  }
}
