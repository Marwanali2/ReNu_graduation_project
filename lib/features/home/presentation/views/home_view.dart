import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/drawer/available_balance.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/drawer/drawer_header_and_name_circe.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/drawer/drawer_list_item_page_container.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeaderAndNameCircle(),
              SizedBox(height: 30.h),
              ListTile(
                title: Text(
                  'Marwan',
                  style: TextStyles.font20BlackNormalRobot
                      .copyWith(fontSize: 22.sp),
                ),
                subtitle: const Text('Marwanalizz42@gmail.com'),
                trailing: const Icon(Icons.arrow_drop_down_outlined),
              ),
              SizedBox(height: 20.h),
              const AvailableBalance(),
              SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 10, bottom: 10),
                child: Column(
                  children: [
                    DrawerListItemPageContainer(
                      titleText: 'Home',
                      icon: Icons.home_outlined,
                      onTap: () {
                        GoRouter.of(context).pop(); // handle with index and if 
                      },
                      useSvg: false,
                      svgAsset: '',
                    ),
                    SizedBox(height: 20.h),
                    DrawerListItemPageContainer(
                      titleText: 'My Order',
                      icon: null,
                      svgAsset: 'my order',
                      useSvg: true,
                      onTap: () {
                        // Handle My Order tap
                      },
                    ),
                    SizedBox(height: 20.h),
                    DrawerListItemPageContainer(
                      titleText: 'Favorite',
                      icon: Icons.favorite_border,
                      svgAsset: '',
                      useSvg: false,
                      onTap: () {
                        // Handle Favorite tap
                      },
                    ),
                    SizedBox(height: 20.h),
                    DrawerListItemPageContainer(
                      titleText: 'Settings',
                      icon: Icons.settings,
                      svgAsset: 'settings',
                      useSvg: true,
                      onTap: () {
                        // Handle Settings tap
                      },
                    ),
                    SizedBox(height: 20.h),
                    DrawerListItemPageContainer(
                      titleText: 'Invite Friend',
                      icon: Icons.person_add,
                      svgAsset: 'invite friend',
                      useSvg: true,
                      onTap: () {
                        // Handle Invite Friend tap
                      },
                    ),
                    SizedBox(height: 20.h),
                    DrawerListItemPageContainer(
                      titleText: 'Rate App',
                      useSvg: true,
                      svgAsset: 'rate_app',
                      icon: null,
                      onTap: () {
                        // Handle Rate App tap
                      },
                    ),
                    SizedBox(height: 20.h),
                    DrawerListItemPageContainer(
                      titleText: 'Logout',
                      useSvg: true,
                      svgAsset: 'logout',
                      icon: Icons.logout,
                      onTap: () {
                        // Handle Logout tap
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
