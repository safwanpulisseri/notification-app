import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notification_app/core/theme/color/app_colors.dart';
import '../../../core/const/height_width.dart';
import '../../../core/util/png_asset.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
       title: Row(
         children: [
          Image.asset(AppPngPath.locationIcon,height: 20,width: 20,),
          kWidth10,
           Text(
                'ABCD, New Delhi',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(color: Colors.black, fontSize:16 ,fontWeight: FontWeight.w700),
                ),
              ),
              kWidth10,
               Image.asset(AppPngPath.backButton,height: 20,width: 20,),
            ],
         ),
         bottom: PreferredSize(
  preferredSize: Size.fromHeight(50),
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
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
        Image.asset(AppPngPath.notification, height: 25, width: 25),
        kWidth15,
        Image.asset(AppPngPath.tagBar, height: 25, width: 25),
        kWidth5,
      ],
    ),
  ),
),
        ),
     body: Center(
          child: Text(
            'Hello, Google Fonts!',
            style: GoogleFonts.quicksand(
              textStyle: TextStyle(color: Colors.black, fontSize: 24,fontWeight: FontWeight.bold),
            ),
          ),
     )
    );
  }
}