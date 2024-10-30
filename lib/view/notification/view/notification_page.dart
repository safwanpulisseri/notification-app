import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notification_app/core/util/png_asset.dart';
import '../../../core/theme/color/app_colors.dart';
import '../widget/notification_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Container(
          decoration: BoxDecoration(
            color: AppColor.background, 
            boxShadow: [
              BoxShadow(
                color: AppColor.secondary.withOpacity(0.2), 
                blurRadius: 4, 
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: AppBar(
            leading: IconButton(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  AppPngPath.backIcon,
                  fit: BoxFit.cover,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Row(
              children: [
                Text(
                  'Notifications',
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                      color: AppColor.secondary,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.transparent, 
            elevation: 0, 
          ),
        ),
      ),
      body: NotificationPageBody(screenSize: screenSize,),
    );
  }
}
