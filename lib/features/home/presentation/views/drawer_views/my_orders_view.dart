import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/core/widgets/common_app_bar.dart';
import 'package:lottie/lottie.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
            child: Column(
              children: [
                CommonAppBar(
                  title: 'My Orders',
                  sizedBoxWidth: MediaQuery.of(context).size.width * 0.2,
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.2),
                Text(
                  'No Orders Yet',
                  style: GoogleFonts.permanentMarker(
                    fontSize: 30.sp,
                  ),
                ),
                SizedBox(height: 20.h),
                Lottie.network(
                  'https://lottie.host/83a699e6-2d22-48eb-a553-5c10652d7d21/KHLe9BpGBo.json',
                  reverse: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
