import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

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
              borderRadius: BorderRadius.circular(15.r),
              color: ColorsManager.semiGrey4),
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
                      Icon(Icons.fire_truck_outlined, size: 20.spMax),
                      SizedBox(width: 5.w),
                      Text('EGP $deliveryCost',
                          style: TextStyles.font14GreyNormal),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.favorite_border))
            ],
          ),
        ),
        Positioned(
          left: 1.w,
          top: 25.h,
          child: SizedBox(
            width: 51.w,
            height: 51.h,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.r),
                  bottomRight: Radius.circular(10.r)),
              child: Image.asset(
                imageAsset,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
