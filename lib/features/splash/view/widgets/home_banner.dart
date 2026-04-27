import 'package:flutter/material.dart';
import 'package:lab1/core/shared/app_theme.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              'assets/images/image.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ),
        Positioned(
          bottom: 12,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              "*Valid from 27/03 to 01/04 2022. Min stock: 1 unit",
              style: AppTextStyles.subtitle.copyWith(
                color: AppColors.black.withOpacity(0.5),
                fontSize: 10,
                height: 1,
                letterSpacing: -0.2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
