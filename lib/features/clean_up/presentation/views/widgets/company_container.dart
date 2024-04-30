import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';

class CompaniesContainer extends StatelessWidget {
  const CompaniesContainer({
    super.key,
    required this.title,
    required this.rating,
    required this.numOfRatings,
    required this.deliveryDuration,
    required this.deliveryCost,
    required this.imageAsset,
  });
  final String title;
  final double rating;
  final int numOfRatings;
  final String deliveryDuration;
  final double deliveryCost;
  final String imageAsset;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 330.w,
          height: 97.h,
          decoration: BoxDecoration(
            border: Border.all(color: ColorsManager.green1),
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 59.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyles.font14BlackMeduim,
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Icon(Icons.star, size: 20.spMax),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(rating.toString(),
                          style: TextStyles.font14GreyNormal),
                      SizedBox(width: 2.w),
                      Text(
                        '( ${numOfRatings.toString()} )',
                        style: TextStyles.font14GreyNormal,
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Icon(Icons.access_time, size: 20.spMax),
                      SizedBox(width: 2.w),
                      Text(deliveryDuration,
                          style: TextStyles.font14GreyNormal),
                      SizedBox(width: 27.w),
                      Icon(
                        Icons.fire_truck_outlined,
                        size: 20.spMax,
                        color: ColorsManager.green1,
                      ),
                      SizedBox(width: 5.w),
                      Text('EGP $deliveryCost',
                          style: TextStyles.font14GreyNormal),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          left: 1.w,
          top: 25.h,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.r),
              bottomRight: Radius.circular(10.r),
            ),
            child: Container(
              width: 51.w,
              height: 48.h,
              decoration: BoxDecoration(
                color: ColorsManager.green2,
              ),
              child: const Center(
                child: SvgPictureComponent(
                  name: 'rubbish',
                  height: 24,
                  width: 24,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
