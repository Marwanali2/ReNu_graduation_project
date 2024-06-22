import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/eco_tips_section.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/home_top_container.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/home_banner.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/our_services_section.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/recent_recycling_section.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';
import 'package:graduation_project/features/recycling/presentation/managers/recycling%20cubit/recycling_cubit.dart';

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
                Text(
                  'Recent Recycling',
                  style: TextStyles.font20SemiBlack1SemiBold,
                ),
                SizedBox(height: 11.h),
                BlocBuilder<RecyclingCubit, RecyclingState>(
                  builder: (context, state) {
                    if (state is ShowRequestResultSuccessState) {
                      return const RecentRecyclingSection();
                    } else if (state is ShowRequestResultLoadingState) {
                      return Center(
                          child: CircularProgressIndicator(
                        color: ColorsManager.green1,
                      ));
                    } else if (state is ShowRequestResultFailureState) {
                      return const Center(child: Text('Error'));
                    } else {
                      return Column(
                        children: [
                          SvgPictureComponent(
                            name: 'pana',
                            width: double.infinity.w,
                            height: 200.h,
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            'No Recycling Operations Yet',
                            style: GoogleFonts.permanentMarker(fontSize: 21.sp),
                          ),
                        ],
                      );
                    }
                  },
                ),
                SizedBox(height: 50.h),
                const EcoTipsSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
