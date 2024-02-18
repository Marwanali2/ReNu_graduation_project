import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/service_container_component.dart';

class OurServicesSection extends StatelessWidget {
  const OurServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Our Services', style: TextStyles.font20SemiBlack1SemiBold),
        SizedBox(height: 11.h),
        Row(
          children: [
            ServiceContainerComponent(
              serviceName: 'Recycling',
              onTap: () {},
            ),
            SizedBox(
              width: 35.w,
            ),
            ServiceContainerComponent(
              serviceName: 'CleanUp',
              onTap: () {},
            ),
            SizedBox(
              width: 35.w,
            ),
            ServiceContainerComponent(
              serviceName: 'Antica',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
