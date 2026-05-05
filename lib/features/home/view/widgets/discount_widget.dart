import 'package:flutter/material.dart';
import 'package:lab1/core/shared/app_theme.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "40%",
                overflow: TextOverflow.visible,
                softWrap: true,
                style: AppTextStyles.title.copyWith(
                  fontSize: 48,
                  height: 1,
                  letterSpacing: -5,
                ),
              ),
              SizedBox(width: 5),
              Text(
                "DSCNT",
                style: AppTextStyles.subtitle.copyWith(
                  fontSize: 18,
                  height: 1,
                  letterSpacing: 0,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "in technology",
            style: AppTextStyles.title.copyWith(
              fontSize: 28,
              height: 1,
              letterSpacing: -1.5,
            ),
          ),
        ],
      ),
    );
  }
}
