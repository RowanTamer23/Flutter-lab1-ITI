import 'package:flutter/material.dart';
import 'package:lab1/core/shared/app_theme.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final bool showDots;

  const SectionHeader({
    super.key,
    required this.title,
    this.showDots = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: AppColors.black,
            ),
          ),
          if (showDots)
            Row(
              children: List.generate(
                4,
                (i) => Container(
                  margin: const EdgeInsets.only(left: 4),
                  width: i == 0 ? 20 : 8,
                  height: 6,
                  decoration: BoxDecoration(
                    color: i == 0 ? AppColors.primary : const Color(0xFFE5E7EB),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
