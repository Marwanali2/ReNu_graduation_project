import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/text_with_under_line_and_arrow.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/recent_recycling_component.dart';

class RecentRecyclingSection extends StatelessWidget {
  const RecentRecyclingSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> prices = [
      '+500RPs',
      '-500RPs',
      '+500RPs',
      '-500RPs',
      '+500RPs',
    ];
    List<Color> pricesColors = [
      Colors.green,
      Colors.red,
      Colors.green,
      Colors.red,
      Colors.green,
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Recent Recycling',
              style: TextStyles.font20SemiBlack1SemiBold,
            ),
            const Spacer(),
            TextWithUnderLineAndArrowButton(text: 'See All', arrowOnTap: () {}),
          ],
        ),
        SizedBox(height: 11.h),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: RecentRecyclingComponent(
                status: 'Recycle Successful',
                time: '2 days ago',
                price: prices[index],
                priceColor: pricesColors[index],
              ),
            );
          },
        )
      ],
    );
  }
}
