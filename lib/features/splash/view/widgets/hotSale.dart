import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lab1/core/shared/app_theme.dart';
import 'package:lab1/features/splash/view/Screens/product_screen.dart';
import 'package:lab1/features/splash/view/widgets/product_card.dart';
import 'package:lab1/core/providers/product_provider.dart';

class HotSalesWidget extends StatefulWidget {
  const HotSalesWidget({super.key});

  @override
  State<HotSalesWidget> createState() => _HotSalesWidgetState();
}

class _HotSalesWidgetState extends State<HotSalesWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ProductProvider>(context, listen: false).fetchProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, productProvider, child) {
        if (productProvider.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (productProvider.error != null) {
          return Center(child: Text(productProvider.error!));
        }

        final products = productProvider.products.take(6).toList();

        return SizedBox(
          height: 220,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductCard(
                product: product,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ProductScreen(product: product),
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
