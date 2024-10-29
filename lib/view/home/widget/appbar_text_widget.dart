import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/const/height_width.dart';
import '../../../core/theme/color/app_colors.dart';
import '../../../core/util/png_asset.dart';

class AppBarTextWidget extends StatelessWidget {
  const AppBarTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Image.asset(AppPngPath.locationIcon,height: 20,width: 20,),
       kWidth10,
        Text(
             'ABCD, New Delhi',
             style: GoogleFonts.quicksand(
               textStyle: const TextStyle(color: AppColor.secondary, fontSize:16 ,fontWeight: FontWeight.w700),
             ),
           ),
           kWidth10,
            Image.asset(AppPngPath.backButton,height: 20,width: 20,),
         ],
      );
  }
}