import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/common_app_bar.dart';
import 'package:graduation_project/features/auth/presentation/mangers/auth%20cubit/auth_cubit.dart';
import 'package:graduation_project/features/auth/presentation/views/sign_up_view.dart';
import 'package:graduation_project/features/home/presentation/views/drawer_views/account_info.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/drawer_widgets/svg_with_title_with_iconbutton.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/profile_image.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonAppBar(
                title: 'Settings',
                sizedBoxWidth: MediaQuery.of(context).size.width * 0.2,
              ),
              SizedBox(height: 47.h),
              Row(
                children: [
                  ProfileImage(
                    height: 40.h,
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${AuthCubit.userModel.name}',
                        style: TextStyles.font20BlackMeduim.copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        '${AuthCubit.userModel.email}',
                        style: TextStyles.font14BlackLight.copyWith(
                          color: ColorsManager.green1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.05.h),
              Text(
                'Profile',
                style: TextStyles.font14MainBlackSemiBold,
              ),
              SizedBox(height: 22.h),
              SvgWithTitleWithIconButton(
                svgName: 'information',
                title: 'Account Info',
                gestureDetectorOnPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => FadeInLeft(
                        curve: Curves.easeInOutBack,
                        child: const AccountInfo(),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 40.h),
              SvgWithTitleWithIconButton(
                svgName: 'profile_marker',
                title: 'My Location',
                gestureDetectorOnPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('My Location'),
                          content:
                              const Text('Tanta Qism2, Gharbia Governorate'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'Okay',
                                style: TextStyle(color: ColorsManager.green1),
                              ),
                            ),
                          ],
                        );
                      });
                },
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.05.h),
              Text(
                'General',
                style: TextStyles.font14MainBlackSemiBold,
              ),
              SizedBox(height: 22.h),
              SvgWithTitleWithIconButton(
                svgName: 'profile_logout',
                title: 'Logout',
                gestureDetectorOnPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => BounceInDown(
                        curve: Curves.bounceInOut,
                        child: const SignUpView(),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
