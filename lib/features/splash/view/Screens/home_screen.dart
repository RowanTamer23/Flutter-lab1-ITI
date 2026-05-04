import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lab1/core/providers/auth_provider.dart';
import 'package:lab1/features/auth/view/screens/login_screen.dart';
import 'package:lab1/core/shared/app_theme.dart';
import 'package:lab1/features/splash/view/widgets/bottom_nav_bar.dart';
import 'package:lab1/features/splash/view/widgets/categories.dart';
import 'package:lab1/features/splash/view/widgets/home_banner.dart';
import 'package:lab1/features/splash/view/widgets/hotSale.dart';
import 'package:lab1/features/splash/view/widgets/notification_icon.dart';
import 'package:lab1/features/splash/view/widgets/recently_viewed.dart';
import 'package:lab1/features/splash/view/widgets/search_bar.dart';
import 'package:lab1/features/splash/view/widgets/section_header.dart';

import 'package:lab1/features/splash/view/Screens/all_products_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leadingWidth: 260,
        leading: const SearchBarWidget(),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: AppColors.primary),
            onPressed: () async {
              await Provider.of<AuthProvider>(context, listen: false).logout();
              if (context.mounted) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                  (route) => false,
                );
              }
            },
          ),
          const NotificationIcon(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const HomeBanner(),
            const SizedBox(height: 20),
            const Categories(),
            const SizedBox(height: 30),
            SectionHeader(
              title: "Hot Sale",
              showDots: true,
              onSeeAll: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AllProductsScreen()),
                );
              },
            ),
            const SizedBox(height: 16),
            const HotSalesWidget(),
            const SizedBox(height: 30),
            const SectionHeader(title: "Recently Viewed"),
            const SizedBox(height: 16),
            const RecentlyViewed(),
            const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
