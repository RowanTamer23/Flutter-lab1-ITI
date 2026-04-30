import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lab1/features/splash/view/Screens/splash_screen.dart';
import 'package:lab1/core/providers/cart_provider.dart';
import 'package:lab1/core/providers/product_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => ProductProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'PPMori',
      ),
      home: const SplashScreen(),
    );
  }
}
