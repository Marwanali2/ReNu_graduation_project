import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * 0.21,
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
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.4.w,
                child: Text(
                  'Use promo code "SAVE40" at checkout and enjoy a huge discount on all our services! Don\'t miss out, this offer is valid for a limited time! ⏳',
                  style: GoogleFonts.raleway(
                    fontSize: 11.sp,
                    color: ColorsManager.mainWhite,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
