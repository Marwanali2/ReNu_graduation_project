import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/networking/launch_url.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/auth/presentation/mangers/auth%20cubit/auth_cubit.dart';
import 'package:graduation_project/features/auth/presentation/views/sign_up_view.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/drawer_widgets/available_balance.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/drawer_widgets/drawer_header_and_name_circe.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/drawer_widgets/drawer_list_item_page_container.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeaderAndNameCircle(),
          SizedBox(height: 30.h),
          ListTile(
            title: Text(
              '${AuthCubit.userModel.name}',
              style:
                  TextStyles.font20BlackNormalRobot.copyWith(fontSize: 22.sp),
            ),
            subtitle: Text('${AuthCubit.userModel.email}'),
          ),
          // SizedBox(height: 20.h),
          // const AvailableBalance(),
          SizedBox(height: 30.h),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 10, bottom: 10),
            child: Column(
              children: [
                DrawerListItemPageContainer(
                  titleText: 'Home',
                  icon: Icons.home_outlined,
                  //containerColor: ColorsManager.green1,
                  onTap: () {
                    GoRouter.of(context).pop(); // handle with index and if
                  },
                  useSvg: false,
                  svgAsset: '',
                ),
                SizedBox(height: 20.h),
                DrawerListItemPageContainer(
                  titleText: 'My Orders',
                  icon: null,
                  svgAsset: 'my order',
                  useSvg: true,
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kMyOrders);
                  },
                ),
                // SizedBox(height: 20.h),
                // DrawerListItemPageContainer(
                //   titleText: 'Favorite',
                //   icon: Icons.favorite_border,
                //   svgAsset: '',
                //   useSvg: false,
                //   onTap: () {
                //     // Handle Favorite tap
                //   },
                // ),
                SizedBox(height: 20.h),
                DrawerListItemPageContainer(
                  titleText: 'Settings',
                  icon: Icons.settings,
                  svgAsset: 'settings',
                  useSvg: true,
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kSettings);
                  },
                ),
                SizedBox(height: 20.h),
                DrawerListItemPageContainer(
                    titleText: 'Invite Friend',
                    icon: Icons.person_add,
                    svgAsset: 'invite friend',
                    useSvg: true,
                    onTap: () async {
                      launchCustomUrl(
                          context, "https://wa.me/201125727329", false);
                    }),
                SizedBox(height: 20.h),
                DrawerListItemPageContainer(
                    titleText: 'Rate App',
                    useSvg: true,
                    svgAsset: 'rate_app',
                    icon: null,
                    onTap: () async {
                      launchCustomUrl(context,
                          "https://play.google.com/store/apps/", false);
                    }),
                SizedBox(height: 20.h),
                DrawerListItemPageContainer(
                  titleText: 'Logout',
                  useSvg: true,
                  svgAsset: 'logout',
                  icon: Icons.logout,
                  onTap: () {
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
        ],
      ),
    );
  }
}
