import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notification_app/core/util/png_asset.dart';
import '../../../core/theme/color/app_colors.dart';

class TrendingItemCard extends StatelessWidget {
  const TrendingItemCard({super.key,required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: screenSize.width/5.4,
          height: screenSize.width/4.9,
          decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage(AppPngPath.trendingImages),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(screenSize.width/75)
          ),
        ),
        SizedBox(width: screenSize.width/30,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                    'Mithas Bhandar',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                          color: AppColor.secondary,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Sweets, North Indian',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                          color: AppColor.secondary,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '(store location)  |  6.4 kms',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                          color: AppColor.secondary,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Image.asset(
                        AppPngPath.starIcon,
                        height: 14,
                        width: 14,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '4.1  |  45 mins',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              color: AppColor.secondary,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                    ),
                 ],
              ),
          ],
        )
      ],
    );
  }
}