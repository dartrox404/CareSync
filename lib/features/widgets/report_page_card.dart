import 'package:care_sync/core/const/app_sizes.dart';
import 'package:care_sync/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ReportPageCard extends StatelessWidget {
  const ReportPageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.height * .25,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppSizes.kspace8,
              horizontal: AppSizes.kspace12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Visit To Surgeon',
                  style: context.text.titleLarge?.copyWith(
                    fontFamily: 'poppins',
                    color: context.color.secondary,
                  ),
                ),
                const Gap(AppSizes.kspace8),
                Row(
                  children: [
                    CircleAvatar(
                      radius: AppSizes.kspace20,
                      backgroundImage: AssetImage(
                        'assets/image/background.webp',
                      ),
                    ),
                    const Gap(AppSizes.kspace10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Doctor',
                          style: context.text.bodyLarge?.copyWith(
                            fontFamily: 'poppins',
                            color: context.color.secondary,
                          ),
                        ),
                        Text(
                          'Arsin Lupin',
                          style: context.text.bodySmall?.copyWith(
                            fontFamily: 'poppins',
                            color: context.color.tertiary,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      '\$100',
                      style: context.text.titleLarge?.copyWith(
                        fontFamily: 'poppins',
                        color: context.color.secondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            left: 15,
            child: Container(
              width: 200,
              height: 35,
              decoration: BoxDecoration(
                color: context.color.onTertiary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppSizes.kradiusXl),
                  topLeft: Radius.circular(AppSizes.kradiusXl),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 15,
            child: Container(
              width: 110,
              height: 35,
              decoration: BoxDecoration(
                color: context.color.tertiary,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(AppSizes.kradiusXl),
                  bottomRight: Radius.circular(AppSizes.kradiusXl),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 58,
            left: 30,
            child: Text(
              'Insurance Converage',
              style: context.text.bodyMedium?.copyWith(fontFamily: 'poppins'),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 100,
            child: Text(
              '86%',
              style: context.text.bodyMedium?.copyWith(
                fontFamily: 'poppins',
                color: context.color.secondary,
              ),
            ),
          ),
          Positioned(
            bottom: 25,
            right: 50,
            child: Text(
              '20%',
              style: context.text.bodyMedium?.copyWith(
                fontFamily: 'poppins',
                color: context.color.secondary,
              ),
            ),
          ),
          Positioned(
            bottom: 25,
            right: 125,
            child: Container(
              height: 60,
              width: 2,
              decoration: BoxDecoration(color: context.color.secondary),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 10,
            child: Container(
              height: 60,
              width: 2,
              decoration: BoxDecoration(color: context.color.secondary),
            ),
          ),
        ],
      ),
    );
  }
}
