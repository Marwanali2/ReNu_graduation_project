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
    required this.serviceSVGName,
  });
  final String serviceName;
  final String serviceSVGName;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.25.w,
        height: MediaQuery.sizeOf(context).height * 0.13.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.r),
          border: Border.all(color: ColorsManager.green3, width: 3.w),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPictureComponent(name: serviceSVGName, width: 50, height: 50),
            SizedBox(height: 11.h),
            Text(serviceName, style: TextStyles.font12SemiBlack1SemiBold),
          ],
        ),
      ),
    );
  }
}
