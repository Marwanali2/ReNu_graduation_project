import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/notifications/notifications_app_bar.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/notifications/single_notifications_container.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: 15.w, right: 15.w, top: 20.h, bottom: 20.h),
            child: Column(
              // TODO: create list view builder when we have the data from api
              children: [
                const NotificationsAppBar(),
                SizedBox(height: 48.h),
                const SingleNotificationContainer(
                  notificationTitle: 'Verify your email address!',
                  notificationDiscription:
                      'Please verify your email address to get the most out of your account. it will allow you to access additional features and ensure the security of your account. ',
                  notificationTime: '23 min',
                  notificationSvgName: 'verify_email',
                ),
                SizedBox(height: 20.h),
                const SingleNotificationContainer(
                  notificationTitle: 'Receive 20% discount for first recycle!',
                  notificationDiscription:
                      'You will receive 20% discount for your first recycle. Hurry up and book your first recycle now! ',
                  notificationTime: '2 hr',
                  notificationSvgName: 'red_discount',
                ),
                SizedBox(height: 20.h),
                SingleNotificationContainer(
                  notificationColor: Colors.white,
                  notificationTitle: 'Verify your email address!',
                  notificationDiscription:
                      'Please verify your email address to get the most out of your account. it will allow you to access additional features and ensure the security of your account. ',
                  notificationTime: '23 min',
                  notificationSvgName: 'discount',
                  border: Border.all(
                    color: ColorsManager.mainBlack,
                    width: 1,
                  ),
                ),
                SizedBox(height: 20.h),
                SingleNotificationContainer(
                  notificationColor: Colors.white,
                  notificationTitle: 'Verify your email address!',
                  notificationDiscription:
                      'Please verify your email address to get the most out of your account. it will allow you to access additional features and ensure the security of your account. ',
                  notificationTime: '23 min',
                  notificationSvgName: 'discount',
                  border: Border.all(
                    color: ColorsManager.mainBlack,
                    width: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
