import 'package:flutter/material.dart';
import 'package:lab1/core/shared/app_theme.dart';

class RecentlyViewed extends StatelessWidget {
  const RecentlyViewed({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        children: [
          _recentCard('assets/images/laptop.png', const Color(0xFFF0E6FF)),
          _recentCard(
            'assets/images/headphones.png',
            const Color(0xFFFFF3E6),
          ),
        ],
      ),
    );
  }

  Widget _recentCard(String image, Color bgColor) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Center(child: Image.asset(image)),
          Positioned(
            top: 8,
            right: 8,
            child: Icon(
              Icons.favorite_border,
              size: 18,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
