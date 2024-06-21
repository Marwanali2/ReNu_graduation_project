import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';
import 'package:graduation_project/features/recycling/presentation/views/widgets/quantity_control.dart';

class RecycleTypeContainer extends StatelessWidget {
  const RecycleTypeContainer({
    super.key,
    required this.recycleTypeText,
    required this.recycleTypeSvg,
  });
  final String recycleTypeText;
  final String recycleTypeSvg;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66.h,
      width: double.infinity.w,
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: ColorsManager.green1,
        ),
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: ColorsManager.green4.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueGrey.shade100,
            ),
            child: Center(
              child: SvgPictureComponent(
                  name: recycleTypeSvg, width: 24, height: 24),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            recycleTypeText,
            style: TextStyles.font15SemiBlack2SemiBold,
          ),
          const Spacer(),
          recycleTypeText == 'Plastic'
              ? const PlasticQuantityControl()
              : recycleTypeText == 'Iron'
                  ? const IronQuantityControl()
                  : recycleTypeText == 'Glass'
                      ? const GlassQuantityControl()
                      : const SizedBox(),
        ],
      ),
    );
  }
}
