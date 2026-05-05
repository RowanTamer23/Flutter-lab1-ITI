import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lab1/core/shared/app_theme.dart';
import 'package:lab1/features/products/data/product_provider.dart';
import 'package:lab1/features/products/view/widgets/product.dart';

class RecentlyViewed extends StatelessWidget {
  const RecentlyViewed({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, productProvider, child) {
        if (productProvider.isLoading) {
          return const SizedBox(height: 150, child: Center(child: CircularProgressIndicator()));
        }

        final products = productProvider.products.take(5).toList();

        return SizedBox(
          height: 150,
          width: double.infinity,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return _recentCard(product, const Color(0xFFF0E6FF));
            },
          ),
        );
      },
    );
  }

  Widget _recentCard(Product product, Color bgColor) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Center(
            child: product.image.startsWith('http')
                ? Image.network(product.image, height: 100)
                : Image.asset(product.image, height: 100),
          ),
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
