import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/book_now_button.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: ColorsManager.green2,
          ),
        ),
        Positioned(
          top: 20,
          right: 20,
          child: SvgPicture.asset(
            'assets/svg/home_slider_image.svg',
            height: 110.h,
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '40%',
                      style: TextStyles.font24MeduimWhite,
                    ),
                    TextSpan(
                      text: ' OFF',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: ColorsManager.mainWhite,
                        fontSize: 24.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                'Recycling and collecting garbage',
                style: TextStyles.font11WhiteLight.copyWith(fontSize: 11.sp),
              ),
              SizedBox(height: 30.h),
              const BookNowButton(),
            ],
          ),
        ),
      ],
    );
  }
}
