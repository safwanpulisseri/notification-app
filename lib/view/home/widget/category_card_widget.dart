import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notification_app/core/theme/color/app_colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.screenSize,
    required this.icon,
    required this.title,
    required this.discount,
  });

  final Size screenSize;
  final String icon;
  final String title;
  final String discount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: AppColor.background,
         //elevation: 3,
          child: SizedBox(
            height: screenSize.width / 5.5,
            width: screenSize.width / 5.5,
            child: Stack(
              children: [
                Center(child: Image.asset(icon, height: 50)),
                if (discount.isNotEmpty)
                  Positioned(
                      top: screenSize.width / 150,
                      right: screenSize.width / 150,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(screenSize.width / 80),
                            color: AppColor.toneFour
                            ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: screenSize.width / 50,
                              right: screenSize.width / 50,
                              top: screenSize.width / 210,
                              bottom: screenSize.width / 210),
                          child:  Text(
            discount,
             style: GoogleFonts.quicksand(
               textStyle: const TextStyle(color: AppColor.background, fontSize:8 ,fontWeight: FontWeight.w600),
             ),
           ),
                        
                        ),
                      )),
              ],
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 8.0),
             child:  Text(
            title,
             style: GoogleFonts.quicksand(
               textStyle: const TextStyle(color: AppColor.toneFive, fontSize:19 ,fontWeight: FontWeight.w500),
             ),
              maxLines: 2,  
          //  overflow: TextOverflow.ellipsis,  
            textAlign: TextAlign.center, 
           ),
           
        ),
      ],
    );
  }
}