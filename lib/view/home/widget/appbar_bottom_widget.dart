
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/const/height_width.dart';
import '../../../core/theme/color/app_colors.dart';
import '../../../core/util/png_asset.dart';
import '../../notification/view/notification_page.dart';

class AppbarBottomWidget extends StatelessWidget {
  const AppbarBottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextFormField(
              
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.toneThree,
                  hintText: 'Search for products/stores',
                  hintStyle: GoogleFonts.quicksand(
                  textStyle:const  TextStyle(color: AppColor.toneTwo, fontSize: 16,fontWeight: FontWeight.w500),
                ),
                   border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8), 
                      borderSide: BorderSide.none, 
                      
                    ),
                    suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            AppPngPath.serachTextformfield, 
            height: 20,
            width: 20,
                  ),
                 ),
                ),
              ),
            ),
          ),
         kWidth15,
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationPage(),),);
            },
            child: Image.asset(AppPngPath.notification, height: 25, width: 25)),
          kWidth15,
          Image.asset(AppPngPath.tagBar, height: 25, width: 25),
          kWidth5,
        ],
      ),
    );
  }
}

