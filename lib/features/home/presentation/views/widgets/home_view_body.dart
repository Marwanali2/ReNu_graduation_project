import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/eco_tips_section.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/home_top_container.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/home_banner.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/our_services_section.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/recent_recycling_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeTopContainer(),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeBanner(),
                SizedBox(height: 17.h),
                const OurServicesSection(),
                SizedBox(height: 22.h),
                const RecentRecyclingSection(),
                SizedBox(height: 11.h),
                const EcoTipsSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
