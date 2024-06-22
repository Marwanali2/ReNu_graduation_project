import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/core/theme/colors.dart';

abstract class Styles {
  static const textStyle32 = TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w500,
      color: Color(0xff3C3C3C),
      fontFamily: robotoFont);

  static const textStyle13 = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: Color(0xff676767),
      fontFamily: robotoFont);
  static const textStyle14 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(103, 103, 103, 1),
      fontFamily: robotoFont);
  static const textStyle30 = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      color: Color(0xff282828),
      fontFamily: robotoFont);
  static const textStyle16 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color(0xff676767),
      fontFamily: robotoFont);
  static const textStyle15 = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Color(0xff676767),
      fontFamily: robotoFont);
  static const textStyle12 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Color(0xffD9D9D9),
      fontFamily: poppinsBlackFont);

  static const textStyle11 = TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w600,
      color: Color(0xff000000),
      fontFamily: poppinsBlackFont);
  static const textStyle7 = TextStyle(
      fontSize: 7,
      fontWeight: FontWeight.w600,
      color: Color(0xff616161),
      fontFamily: poppinsBlackFont);

  static const textStyle20 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Color(0xff000000),
      fontFamily: poppinsBlackFont);
}

class TextStyles {
  static TextStyle font8BlackMeduim = GoogleFonts.inter(
    fontSize: 8.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.mainBlack,
  );
  static TextStyle font10BlackMeduim = GoogleFonts.roboto(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.mainBlack,
  );
  static TextStyle font10WhiteMeduim = GoogleFonts.roboto(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.mainWhite,
  );
  static TextStyle font10SemiGrey1Normal = GoogleFonts.poppins(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.semiGrey1,
  );
  static TextStyle font11WhiteLight = GoogleFonts.roboto(
    fontSize: 11.sp,
    fontWeight: FontWeight.w300,
    color: ColorsManager.mainWhite,
  );

  static TextStyle font11BlackSemiBold = GoogleFonts.inter(
    fontSize: 11.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.mainBlack,
  );
  static TextStyle font11SemiGrey1Normal = GoogleFonts.inter(
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.semiGrey1,
  );
  static TextStyle font12SemiBlack1SemiBold = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.semiBlack1,
  );
  static TextStyle font12BlackNormal = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.mainBlack,
  );
  static TextStyle font12Grey1SemiBold = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.semiGrey1,
  );

  static TextStyle font13Grey1Light = GoogleFonts.roboto(
    fontSize: 13.sp,
    fontWeight: FontWeight.w300,
    color: ColorsManager.semiGrey1,
  );

  static TextStyle font14WhiteMeduim = GoogleFonts.roboto(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.mainWhite,
  );
  static TextStyle font14Grey2SemiBold = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.semiGrey2,
  );
  static TextStyle font14MainBlackSemiBold = GoogleFonts.roboto(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.mainBlack,
  );
  static TextStyle font14SemiBlack2SemiBold = GoogleFonts.roboto(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManager.semiBlack2,
  );
  static TextStyle font14GreyNormal = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.semiGrey2,
  );
  static TextStyle font14BlackMeduim = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.mainBlack,
  );
  static TextStyle font14BlackLight = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w300,
    color: ColorsManager.mainBlack,
  );
  static TextStyle font15SemiBlack2SemiBold = GoogleFonts.roboto(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.mainBlack,
  );
  static TextStyle font15SemiBlack2SemiBoldPoppins = GoogleFonts.poppins(
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.semiBlack2,
  );
  static TextStyle font16BlackMeduim = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.mainBlack,
  );
  static TextStyle font16BlackSemiBoldInter = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.mainBlack,
  );
  static TextStyle font16BlackMeduimRoboto = GoogleFonts.roboto(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.mainBlack,
  );
  static TextStyle font20SemiBlack1SemiBold = GoogleFonts.poppins(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.semiBlack1,
  );
  static TextStyle font20BlackMeduim = GoogleFonts.poppins(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.mainBlack,
  );
  static TextStyle font20BlackNormalRobot = GoogleFonts.roboto(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.mainBlack,
  );
  static TextStyle font22WhiteMeduim = GoogleFonts.poppins(
    fontSize: 22.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.mainWhite,
  );
  static TextStyle font22SemiGrey1SemiBold = GoogleFonts.poppins(
    fontSize: 22.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.semiGrey1,
  );
  static TextStyle font24MeduimSemiBlack1Poopins = GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.semiBlack1,
  );
  static TextStyle font24MeduimWhite = GoogleFonts.roboto(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.mainWhite,
  );
}
