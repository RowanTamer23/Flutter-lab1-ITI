import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/shared/app_theme.dart';
import '../../../../core/providers/cart_provider.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: AppColors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Checkout',
          style: AppTextStyles.title.copyWith(color: AppColors.black, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sectionTitle('Shipping Address'),
            const SizedBox(height: 16),
            _buildAddressCard(),
            const SizedBox(height: 32),
            _sectionTitle('Payment Method'),
            const SizedBox(height: 16),
            _buildPaymentCard(),
            const SizedBox(height: 32),
            _sectionTitle('Order Summary'),
            const SizedBox(height: 16),
            _buildOrderSummary(cart),
            const SizedBox(height: 40),
            _buildPlaceOrderButton(context, cart),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: AppTextStyles.title.copyWith(fontSize: 18, color: AppColors.black),
    );
  }

  Widget _buildAddressCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FA),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.withOpacity(0.1)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.location_on_outlined, color: AppColors.primary),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Home', style: AppTextStyles.title.copyWith(fontSize: 16)),
                const SizedBox(height: 4),
                Text(
                  '123 Street Name, City, Country',
                  style: AppTextStyles.subtitle.copyWith(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(Icons.edit_outlined, size: 20, color: Colors.grey),
        ],
      ),
    );
  }

  Widget _buildPaymentCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FA),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.withOpacity(0.1)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.orange.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.credit_card, color: Colors.orange),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mastercard', style: AppTextStyles.title.copyWith(fontSize: 16)),
                const SizedBox(height: 4),
                Text(
                  '**** **** **** 4567',
                  style: AppTextStyles.subtitle.copyWith(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(Icons.keyboard_arrow_down, size: 20, color: Colors.grey),
        ],
      ),
    );
  }

  Widget _buildOrderSummary(CartProvider cart) {
    return Column(
      children: [
        _summaryRow('Subtotal', '\$${cart.totalAmount.toStringAsFixed(2)}'),
        const SizedBox(height: 12),
        _summaryRow('Shipping', 'Free'),
        const SizedBox(height: 12),
        _summaryRow('Tax', '\$0.00'),
        const Divider(height: 32),
        _summaryRow('Total', '\$${cart.totalAmount.toStringAsFixed(2)}', isTotal: true),
      ],
    );
  }

  Widget _summaryRow(String label, String value, {bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: isTotal
              ? AppTextStyles.title.copyWith(fontSize: 18)
              : AppTextStyles.subtitle.copyWith(color: Colors.grey),
        ),
        Text(
          value,
          style: isTotal
              ? AppTextStyles.title.copyWith(fontSize: 20, color: AppColors.primary)
              : AppTextStyles.title.copyWith(fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildPlaceOrderButton(BuildContext context, CartProvider cart) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          _showSuccessDialog(context, cart);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 0,
        ),
        child: Text(
          'Place Order',
          style: AppTextStyles.title.copyWith(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  void _showSuccessDialog(BuildContext context, CartProvider cart) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.check_circle, color: Colors.green, size: 60),
            ),
            const SizedBox(height: 24),
            Text(
              'Order Placed!',
              style: AppTextStyles.title.copyWith(fontSize: 22),
            ),
            const SizedBox(height: 12),
            Text(
              'Your order has been successfully placed and is on its way.',
              textAlign: TextAlign.center,
              style: AppTextStyles.subtitle.copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  cart.clear();
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                ),
                child: const Text('Back to Home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
