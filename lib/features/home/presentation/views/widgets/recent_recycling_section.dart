import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class RecentRecyclingListView extends StatelessWidget {
  const RecentRecyclingListView({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> prices = [
    //   '+500RPs',
    //   '-500RPs',
    //   '+500RPs',
    //   '-500RPs',
    //   '+500RPs',
    //   '+500RPs',
    //   '-500RPs',
    //   '+500RPs',
    //   '-500RPs',
    //   '+500RPs',
    // ];
    // List<String> svgAssetName = [
    //   'recycling-box',
    //   'recycling_cart',
    //   'recycling-box',
    //   'recycling_cart',
    //   'recycling-box',
    // ];
    // List<Color> pricesColors = [
    //   Colors.green,
    //   Colors.red,
    //   Colors.green,
    //   Colors.red,
    //   Colors.green,
    // ];
    return Column(
      children: [
        SizedBox(height: 10.h),
        Text(
          'No Recycling Operations Yet',
          style: GoogleFonts.permanentMarker(fontSize: 21.sp),
        ),
        Lottie.network(
          'https://lottie.host/83a699e6-2d22-48eb-a553-5c10652d7d21/KHLe9BpGBo.json',
          height: 150.h,
          reverse: true,
        ),
      ],
    );
    // ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: svgAssetName.length,
    //   physics: const NeverScrollableScrollPhysics(),
    //   itemBuilder: (context, index) {
    //     return Padding(
    //       padding: EdgeInsets.only(bottom: 10.h),
    //       child: RecentRecyclingComponent(
    //         status: 'Recycle Successful',
    //         time: '2 days ago',
    //         price: prices[index],
    //         svgAssetName: svgAssetName[index],
    //         priceColor: pricesColors[index],
    //       ),
    //     );
    //   },
    // );
  }
}
