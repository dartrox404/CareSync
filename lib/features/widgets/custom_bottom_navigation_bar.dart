import 'package:care_sync/core/const/app_sizes.dart';
import 'package:care_sync/core/extensions/app_extensions.dart';
import 'package:care_sync/data/model/iconlist.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.ontap,
    required this.tracker,
  });
  final int tracker;
  final Function(int) ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * .6,
      decoration: BoxDecoration(
        color: context.color.secondary,
        borderRadius: BorderRadius.circular(AppSizes.kspace32),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.kspace5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            iconlist.length,
            (index) => GestureDetector(
              onTap: () => ontap(index),
              child: AnimatedScale(
                scale: tracker == index ? 1.15 : 1,
                duration: const Duration(milliseconds: 300),
                child: Container(
                  decoration: BoxDecoration(
                    color: tracker == index
                        ? context.color.primary
                        : Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      iconlist[index],
                      color: tracker == index
                          ? context.color.secondary
                          : context.color.tertiary,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
