import 'package:flutter/material.dart';
import 'package:lab1/core/shared/app_theme.dart';
import 'package:lab1/features/auth/view/screens/login_screen.dart';
import 'package:lab1/features/home/view/widgets/discount_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.bg1, AppColors.bg2],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 70,
              left: 40,
              right: 0,
              child: Container(
                height: 100,
                width: 50,
                child: Text(
                  "CYBER LINIO",
                  overflow: TextOverflow.visible,
                  softWrap: true,

                  style: AppTextStyles.title.copyWith(
                    color: AppColors.secondary,
                    fontSize: 58,
                    height: 1,
                    letterSpacing: 0.1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 100,
              right: 10,
              child: Container(
                height: 200,
                child: Image.asset(
                  'assets/images/spark.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(top: 190, left: 40, right: 0, child: DiscountWidget()),
            Positioned(
              top: 290,
              left: 40,
              child: Container(
                width: 150,
                height: 30,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "FREE SHIPPING",
                    style: AppTextStyles.title.copyWith(
                      color: AppColors.primary,
                      fontSize: 18,
                      height: 1,
                      letterSpacing: -1.5,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 380,
              left: -60,
              child: Container(
                transform: Matrix4.rotationZ(0.1),
                width: 420,
                child: Container(
                  child: Image.asset(
                    'assets/images/laptop.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 260,
              right: 40,
              child: Container(
                transform: Matrix4.rotationZ(0.1),
                width: 230,
                child: Container(
                  child: Image.asset(
                    'assets/images/playconsole.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 380,
              right: 0,
              child: Container(
                transform: Matrix4.rotationZ(0.1),
                width: 150,
                child: Container(
                  child: Image.asset(
                    'assets/images/headphones.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 250,
              left: -30,
              child: Container(
                width: 250,
                child: Container(
                  child: Image.asset(
                    'assets/images/speakers.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 190,
              left: 80,
              child: Container(
                width: 130,
                child: Container(
                  child: Image.asset(
                    'assets/images/earbuds.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 190,
              right: 40,
              child: Container(
                width: 160,
                child: Container(
                  child: Image.asset(
                    'assets/images/remote.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 20,
              right: 0,
              left: 0,
              child: Container(
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "*Valid from 27/03 to 01/04 2022. Min stock: 1 unit",
                        style: AppTextStyles.subtitle.copyWith(
                          fontSize: 12,
                          height: 1,
                          letterSpacing: -0.2,
                        ),
                      ),
                      // SizedBox(height: 30),

                      // TextButton(
                      //   onPressed: () {
                      //     Navigator.pushReplacement(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => const LoginScreen(),
                      //       ),
                      //     );
                      //   },
                      //   style: TextButton.styleFrom(
                      //     padding: EdgeInsets.symmetric(horizontal: 130),
                      //     backgroundColor: AppColors.white,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(50),
                      //     ),
                      //   ),
                      //   child: Text(
                      //     "LOG IN",
                      //     style: AppTextStyles.title.copyWith(
                      //       color: AppColors.primary,
                      //       fontSize: 18,
                      //     ),
                      //   ),
                      // ),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "SKIP",
                          style: AppTextStyles.title.copyWith(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
