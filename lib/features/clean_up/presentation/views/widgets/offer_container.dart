import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class OfferContainer extends StatelessWidget {
  const OfferContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.w,
      height: 133.h,
      decoration: BoxDecoration(
        color: ColorsManager.semiGrey3,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18.r),
            child: Image.asset(
              'assets/images/anosa78x70.jpg',
              width: 78.w,
              height: 70.h,
            ),
          ),
          SizedBox(width: 5.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Special Request',
                  style: TextStyles.font14BlackMeduim
                      .copyWith(fontWeight: FontWeight.bold)),
              SizedBox(height: 4.h),
              SizedBox(
                  width: 200.w,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.font12SemiBlack1SemiBold
                        .copyWith(fontWeight: FontWeight.w300),
                  )),
              SizedBox(height: 13.h),
              Row(
                children: [
                  Text('EGP 120',
                      style: TextStyles.font11SemiGrey1Normal.copyWith(
                        decoration: TextDecoration.lineThrough,
                      )),
                  SizedBox(width: 10.w),
                  Text('EGP 100', style: TextStyles.font11BlackSemiBold),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
