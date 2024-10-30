import 'package:flutter/material.dart';
import '../widget/appbar_bottom_widget.dart';
import '../widget/appbar_text_widget.dart';
import '../widget/main_home_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  

  @override
  
  Widget build(BuildContext context) {
      final screenSize = MediaQuery.of(context).size;
    return Scaffold(
    appBar: AppBar(
       title: const AppBarTextWidget(),
         bottom: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarBottomWidget(),
          ),
        ),
         body: HomePageMainWidget(screenSize: screenSize),
    );
  }
}

