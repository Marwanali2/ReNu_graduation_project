import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/home_custom_app_bar.dart';

class HomeTopContainer extends StatelessWidget {
  const HomeTopContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.green1,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(
            30.r,
          ),
          bottomLeft: Radius.circular(
            30.r,
          ),
        ),
      ),
      width: double.infinity,
      height: 162.h,
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 26.h, 20.w, 0.h),
        child: Column(
          children: [
            const HomeCustomAppBar(),
            SizedBox(
              height: 20.h,
            ),
            //const SearchFieldContainer(),
            Text('ReNu App', //satisfy //sofia //sacramento //rocksalt
                style: GoogleFonts.monoton(
                  fontSize: 45.sp,
                  color: ColorsManager.mainWhite,
                )),
          ],
        ),
      ),
    );
  }
}
