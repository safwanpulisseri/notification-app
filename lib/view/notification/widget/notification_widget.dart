import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/theme/color/app_colors.dart';
import '../../../model/service/remote/notification_remote_service.dart';
import '../../../view_model/notification_model.dart';
import '../../../view_model/time_stamp.dart';

class NotificationPageBody extends StatelessWidget {
  const NotificationPageBody({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NotificationsRemoteModel>>(
      future: fetchNotifications(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: SizedBox(
              height: screenSize.width/16,
            width: screenSize.width/16,
              child:  const CircularProgressIndicator(
                color: AppColor.primary,
                strokeWidth: 2.5,
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return Center(
            child:   Text(
                 'Error: ${snapshot.error}',
                  style: GoogleFonts.quicksand(
                    textStyle:  TextStyle(
                      color: AppColor.secondary,
                      fontSize: screenSize.width / 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
          );
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(
            child:
             Text(
                 'No notifications',
                  style: GoogleFonts.quicksand(
                    textStyle:  TextStyle(
                      color: AppColor.secondary,
                      fontSize:screenSize.width / 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
          );
        } else {
          final notifications = snapshot.data!;
          return ListView.builder(
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              final notification = notifications[index];
              return Column(
                children: [
                  ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(bottom: screenSize.width/14,),
                       child: Image.asset('assets/images/${notification.image}',
                       height: 50,width: 50,
                       ),
                    ),
                    title: Text(
                 notification.title,
                  style: GoogleFonts.quicksand(
                    textStyle:  TextStyle(
                      color: AppColor.secondary,
                      fontSize:screenSize.width / 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: screenSize.width / 100),
                         Text(
                 notification.body,
                  style: GoogleFonts.quicksand(
                    textStyle:  TextStyle(
                      color: AppColor.toneOne,
                      fontSize:screenSize.width / 30,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: screenSize.width / 100),
                 Text( formatTimestamp(notification.timestamp),
                  style: GoogleFonts.quicksand(
                    textStyle:  TextStyle(
                      color: AppColor.toneOne,
                      fontSize:screenSize.width / 34,
                      fontWeight: FontWeight.w400,
                          ),
                        ),
                       ),
                      ],
                    ),
                  ),
                  Divider(
                    color: AppColor.toneTwo,
                    thickness: screenSize.width/500,
                  )
                ],
              );
            },
          );
        }
      },
    );
  }
}