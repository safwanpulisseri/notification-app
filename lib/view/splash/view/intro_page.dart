import 'package:flutter/material.dart';
import 'package:notification_app/core/theme/color/app_colors.dart';
import 'package:notification_app/core/util/png_asset.dart';
import 'package:notification_app/view/navigation_bar/home_navigation.dart';
import '../../../core/const/height_width.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const HomeNavigation()),
      (route) => false,
    );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Center(
        child: SizedBox(
          height: screenHeight(context: context) / 2,
          width: screenWidth(context: context) / 2,
          child: Image.asset(
            AppPngPath.appLogo,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}