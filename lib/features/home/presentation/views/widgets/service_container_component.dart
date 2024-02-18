import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';

class ServiceContainerComponent extends StatelessWidget {
  const ServiceContainerComponent({
    super.key,
    required this.serviceName,
    required this.onTap,
  });
  final String serviceName;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 86.w,
        height: 86.h,
        decoration: BoxDecoration(
          color: ColorsManager.semiGrey3,
          borderRadius: BorderRadius.circular(18.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SvgPictureComponent(name: 'points', width: 30, height: 30),
            SizedBox(height: 11.h),
            Text(serviceName, style: TextStyles.font11BlackSemiBold),
          ],
        ),
      ),
    );
  }
}
