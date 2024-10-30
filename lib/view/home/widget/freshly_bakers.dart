import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notification_app/core/const/height_width.dart';
import 'package:notification_app/core/util/png_asset.dart';
import '../../../core/theme/color/app_colors.dart';

class FreshlyBakers extends StatelessWidget {
  const FreshlyBakers({super.key, required this.screenSize});
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column( 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            kWidth20,
            Container(
              width: screenSize.width / 5.4,
              height: screenSize.width / 4.9,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(AppPngPath.freshlyImages),
                  // fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(screenSize.width / 75),
              ),
            ),
            SizedBox(width: screenSize.width / 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Freshly Baker',
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
                  Row(
                    children: [
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
                      kWidth100,
                      Image.asset(AppPngPath.starIcon),
                      kWidth10,
                      Text(
                        '4.1',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              color: AppColor.secondary,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Site No - 1  |  6.4 kms',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              color: AppColor.secondary,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      kWidth100,
                      Text(
                        '45 mins',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              color: AppColor.toneSeven,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  kHeight5,
                  Container(
                    height: 20,
                    width: 55,
                    decoration: BoxDecoration(
                      color: AppColor.toneSix,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        'Top Store',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              color: AppColor.secondary,
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(
          color: AppColor.toneTwo, 
          thickness: 1, 
          indent: screenSize.width /4, 
          endIndent: screenSize.width / 20, 
        ),
        Row(
          children: [
               kWidth100,
                  kWidth10,
            Image.asset(
              AppPngPath.offerSmlIcon,
              height: 14,
              width: 14,
            ),
            kWidth10,
            Text(
              'Upto 10% OFF',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    color: AppColor.secondary,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
            ),
            kWidth10,
            Image.asset(
              AppPngPath.grocerySmlIcon,
              height: 14,
              width: 14,
            ),
            kWidth10,
            Text(
              '3400+ items available',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    color: AppColor.secondary,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
