import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/text_with_underline.dart';

class EcoTipsSection extends StatelessWidget {
  const EcoTipsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Eco Tips', style: TextStyles.font20SemiBlack1SemiBold),
            const Spacer(),
            TextWithUnderLine(
              text: 'Show more',
              lineWidth: 70,
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
        SizedBox(
          height: 5.h,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 23.0.r,
              backgroundImage: const AssetImage('assets/images/anosa.jpg'),
            ),
            SizedBox(width: 5.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tip number 1',
                  style: TextStyles.font15SemiBlack2SemiBold,
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.7,
                  child: Text(
                    'Tip number 1 detailsTip number 1 detailsTip number 1 detailsTip number 1 detailsTip number 1Tip number 1 details',
                    style: TextStyles.font11BlackSemiBold,
                  ),
                ),
              ],
            ),
            Container(
              width: 17.w,
              height: 17.h,
              decoration: BoxDecoration(
                color: ColorsManager.semiGrey3,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 11.w,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
