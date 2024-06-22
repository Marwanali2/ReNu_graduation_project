import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/features/recycling/presentation/views/widgets/order_type_container.dart';

class RecycleTypeContainer extends StatelessWidget {
  const RecycleTypeContainer({
    super.key,
    required this.recycleTypeText,
    required this.recycleTypeSvg,
    required this.showQuantityControl,
  });
  final String recycleTypeText;
  final String recycleTypeSvg;
  final bool showQuantityControl;

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
      child: OrderTypeContainer(
        recycleTypeSvg: recycleTypeSvg,
        recycleTypeText: recycleTypeText,
        showQuantityControl: showQuantityControl,
      ),
    );
  }
}
