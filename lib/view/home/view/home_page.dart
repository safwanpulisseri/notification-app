import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notification_app/core/theme/color/app_colors.dart';
import '../../../core/const/height_width.dart';
import '../widget/appbar_bottom_widget.dart';
import '../widget/appbar_text_widget.dart';
import '../widget/carousel_widget.dart';
import '../widget/category_list_widget.dart';

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
         body: Column(
          children: [
             Row(
               children: [
                kWidth20,
                 Text('What would you like to do today?',
                    style: GoogleFonts.quicksand(
                   textStyle: const TextStyle(color: AppColor.secondary, fontSize:22 ,fontWeight: FontWeight.w700),
                 ),
                 ),
               ],
             ),
              CategoryList(screenSize: screenSize,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('More',
               style: GoogleFonts.quicksand(
                 textStyle: const TextStyle(color: AppColor.primary, fontSize:16 ,fontWeight: FontWeight.bold),
               ),
                ),
                Icon(Icons.keyboard_arrow_down,color: AppColor.primary,size: screenSize.width/12,)
              ],
            ),
              Row(
               children: [
                kWidth20,
                 Text('Top picks for you',
                    style: GoogleFonts.quicksand(
                   textStyle: const TextStyle(color: AppColor.secondary, fontSize:22 ,fontWeight: FontWeight.w700),
                 ),
                 ),
               ],
             ),
           CarouselSliderWidget(),
          ],
       )
    );
  }
}
