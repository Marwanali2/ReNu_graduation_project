import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';

class OfferContainer extends StatelessWidget {
  const OfferContainer({
    super.key,
    required this.offerTitle,
    required this.offerDescription,
    required this.offerOldPrice,
    required this.offerNewPrice,
  });
  final String offerTitle;
  final String offerDescription;
  final String offerOldPrice;
  final String offerNewPrice;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: MediaQuery.sizeOf(context).height * 0.15.h,
      decoration: BoxDecoration(
        border: Border.all(color: ColorsManager.green1, width: 1.w),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        children: [
          SizedBox(width: 10.w),
          const SvgPictureComponent(
            name: 'special_offer',
            width: 60,
            height: 70,
          ),
          SizedBox(width: 5.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                offerTitle,
                style: TextStyles.font14BlackMeduim.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    fontFamily: 'Roboto'),
              ),
              SizedBox(height: 4.h),
              SizedBox(
                width: 200.w,
                child: Text(
                  offerDescription,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font12SemiBlack1SemiBold.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              SizedBox(height: 13.h),
              Row(
                children: [
                  Text(
                    offerOldPrice,
                    style: TextStyles.font11SemiGrey1Normal.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    offerNewPrice,
                    style: TextStyles.font11BlackSemiBold
                        .copyWith(color: ColorsManager.green1, fontSize: 13.sp),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
