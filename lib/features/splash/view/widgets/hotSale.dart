import 'package:flutter/material.dart';
import 'package:lab1/core/shared/app_theme.dart';
import 'package:lab1/features/splash/view/Screens/product_screen.dart';
import 'package:lab1/features/splash/view/widgets/product.dart';

import 'package:lab1/features/splash/view/widgets/product_card.dart';

class HotSalesWidget extends StatelessWidget {
  const HotSalesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemCount: hotSales.length,
        itemBuilder: (context, index) {
          return ProductCard(
            product: hotSales[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ProductScreen()),
              );
            },
          );
        },
      ),
    );
  }
}
