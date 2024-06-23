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
                    style: TextStyles.font16BlackMeduimRoboto,
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Icon(Icons.star_border,
                          color: ColorsManager.green1, size: 20.spMax),
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
                      SizedBox(width: 15.w),
                      Icon(
                        Icons.location_on_outlined,
                        color: ColorsManager.green1,
                      ),
                      Text(
                        'El nadi Street',
                        style: TextStyles.font14GreyNormal,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Icon(Icons.access_time,
                          color: ColorsManager.green1, size: 20.spMax),
                      SizedBox(width: 2.w),
                      Text(deliveryDuration,
                          style: TextStyles.font14GreyNormal),
                      SizedBox(width: 27.w),
                      Icon(
                        Icons.attach_money_sharp,
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
            child: SizedBox(
              width: 60.w,
              height: 50.h,
              child: Center(
                child: Image.network(
                    'https://api-service.cloud/recycle/storage/app/public/FD2uB65wVPjwskeTZBKSHj1ivANAg3dG.jpeg'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
