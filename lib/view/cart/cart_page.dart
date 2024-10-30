import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/theme/color/app_colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Center(child: Text('Welocome',
        style: GoogleFonts.quicksand(
               textStyle: const TextStyle(
                color: AppColor.secondary,
                 fontSize:20 ,
                 fontWeight: FontWeight.w700),
             ),
         ),
      ),
    );
  }
}