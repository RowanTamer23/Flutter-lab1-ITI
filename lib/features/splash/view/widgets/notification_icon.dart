import 'package:flutter/material.dart';
import 'package:lab1/core/shared/app_theme.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.cardbg,
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Icon(Icons.notifications_none_outlined),
    );
  }
}
