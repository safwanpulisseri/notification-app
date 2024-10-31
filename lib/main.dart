import 'package:flutter/material.dart';
import 'package:notification_app/view/navigation_bar/home_navigation.dart';
import 'package:notification_app/model/controller/navigation_controller.dart';
import 'package:notification_app/view/splash/view/intro_page.dart';
import 'package:provider/provider.dart';
import 'core/theme/app_theme.dart';


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=>HomeNavigationController())
    ],
    child: const  MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notification App',
      theme: AppTheme.theme,
      home:const  IntroPage(),
    );
  }
}

