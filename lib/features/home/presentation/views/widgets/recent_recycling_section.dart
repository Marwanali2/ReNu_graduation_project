import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/features/auth/presentation/mangers/auth%20cubit/auth_cubit.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';
import 'package:graduation_project/features/recycling/presentation/managers/recycling%20cubit/recycling_cubit.dart';
import 'package:graduation_project/features/recycling/presentation/views/widgets/recycle_type_container.dart';

class RecentRecyclingSection extends StatelessWidget {
  const RecentRecyclingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthCubit.userModel.points.toString() == '0' ||
            RecyclingCubit.totalPoints.toString() == '0'
        ? Column(
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
              // Lottie.network(
              //   'https://lottie.host/83a699e6-2d22-48eb-a553-5c10652d7d21/KHLe9BpGBo.json',
              //   height: 150.h,
              //   reverse: true,
              // ),
            ],
          )
        : Column(
            children: [
              const RecycleTypeContainer(
                  recycleTypeText: 'Plastic',
                  recycleTypeSvg: 'guidance_plastic',showQuantityControl: false,),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.03.h),
              const RecycleTypeContainer(
                  recycleTypeText: 'Iron',
                  recycleTypeSvg: 'iconoir_electronics-chip',showQuantityControl: false,),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.03.h),
              const RecycleTypeContainer(
                  recycleTypeText: 'Glass',
                  recycleTypeSvg: 'game-icons_shattered-glass',showQuantityControl: false,),
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
