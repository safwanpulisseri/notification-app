import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/const/height_width.dart';
import '../../../core/theme/color/app_colors.dart';
import '../../../core/util/png_asset.dart';
import 'carousel_widget.dart';
import 'category_list_widget.dart';
import 'freshly_bakers.dart';
import 'trending_widget.dart';

class HomePageMainWidget extends StatelessWidget {
  const HomePageMainWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
        const CarouselSliderWidget(
       imagePaths: [
       AppPngPath.carouselImageOne,
       AppPngPath.carouselImageTwo,
       AppPngPath.carouselImageOne,
       AppPngPath.carouselImageTwo,
     ],
         ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Trending',
                   style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(color: AppColor.secondary, fontSize:22 ,fontWeight: FontWeight.w700),
                 ),
                ),
                 Text('See all',
                   style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(color: AppColor.primary, fontSize:16 ,fontWeight: FontWeight.w700),
                 ),
                ),
              ],
            ),
          ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
      child: Column(
      children: [
       Row(
         children: [
           kWidth25,
           TrendingItemCard(screenSize: screenSize),
           SizedBox(width: screenSize.width/12,),
           TrendingItemCard(screenSize: screenSize),
           SizedBox(width: screenSize.width/12,),
         ],
       ),
       SizedBox(height: screenSize.height/40,),
       Row(
         children: [
           kWidth25,
           TrendingItemCard(screenSize: screenSize),
            SizedBox(width: screenSize.width/12,),
           TrendingItemCard(screenSize: screenSize),
           SizedBox(width: screenSize.width/12,),
                ],
           ),
        ],
       ),
     ),
     kHeight20,
        Row(
            children: [
             kWidth25,
              Text('Craze deals',
                 style: GoogleFonts.quicksand(
                textStyle: const TextStyle(color: AppColor.secondary, fontSize:22 ,fontWeight: FontWeight.w700),
              ),
              ),
            ],
          ),
          const CarouselSliderWidget(
       imagePaths: [
       AppPngPath.crazeDeals,
        ],
      ),
      kHeight20,
      Image.asset(AppPngPath.referEarn),
        Padding(
            padding: const EdgeInsets.all(22.0),
            child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Nearby stores',
                   style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(color: AppColor.secondary, fontSize:22 ,fontWeight: FontWeight.w700),
                 ),
                ),
                 Text('See all',
                   style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(color: AppColor.primary, fontSize:16 ,fontWeight: FontWeight.w700),
                 ),
                ),
              ],
            ),
          ),
          FreshlyBakers(screenSize: screenSize,),
          kHeight25,
           FreshlyBakers(screenSize: screenSize,),
            kHeight35,
           ElevatedButton(
             onPressed: (){}, child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 50),
               child: Text('View all stores',  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                      color: AppColor.background, 
                      fontSize:16 ,fontWeight: 
                      FontWeight.w500,
                      ),
                   ),
               ),
             )
          ),
         kHeight35,
       ],
     ),
    );
  }
}

