import 'package:flutter/material.dart';
import 'package:lab1/core/shared/app_theme.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: AppColors.cardbg,
        borderRadius: BorderRadius.circular(50),
      ),

      child: Row(
        children: [
          Icon(Icons.search, color: AppColors.black.withValues(alpha: 0.5)),
          SizedBox(width: 10),
          Text(
            "Search",
            style: AppTextStyles.title.copyWith(
              color: AppColors.black.withValues(alpha: 0.5),
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
