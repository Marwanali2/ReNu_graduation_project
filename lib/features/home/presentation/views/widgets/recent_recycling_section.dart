import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/recent_recycling_component.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/text_with_underline.dart';

class RecentRecyclingSection extends StatelessWidget {
  const RecentRecyclingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Recent Recycling',
                style: TextStyles.font20SemiBlack1SemiBold),
            const Spacer(),
            TextWithUnderLine(
              text: 'See All',
              lineWidth: 40,
              onTap: () {},
            ),
            SizedBox(
              width: 4.w,
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.arrow_forward_ios,
                size: 12.w,
              ),
            ),
          ],
        ),
        SizedBox(height: 11.h),
        const RecentRecyclingComponent(
          status: 'Recycle Successful',
          time: '2 days ago',
          price: '500RPs',
        ),
        SizedBox(
          height: 15.h,
        ),
        const RecentRecyclingComponent(
          status: 'Recycle Successful',
          time: '4 days ago',
          price: '50RPs',
        ),
      ],
    );
  }
}
