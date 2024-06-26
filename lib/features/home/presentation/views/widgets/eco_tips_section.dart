import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/text_with_under_line_and_arrow.dart';
import 'package:graduation_project/features/home/presentation/views/eco_tips_view.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';
 
class EcoTipsSection extends StatelessWidget {
  const EcoTipsSection({super.key});
 
  @override
  Widget build(BuildContext context) {
    List<String> tips = [
      'Energy Saving',
      'recycling and its importance to the environment',
    ];
    List<String> tipsSvgAssetName = [
      'energy_saving',
      'garbage-truck',
    ];
    List<String> tipsDescription = [
      'Save energy by turning off lights and appliances when not in use.',
      'Recycling helps reduce waste and protect the environment.',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Eco Tips', style: TextStyles.font20SemiBlack1SemiBold),
            const Spacer(),
            TextWithUnderLineAndArrowButton(
                text: 'Show More',
                lineWidth: 70,
                arrowOnTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return FlipInY(
                          duration: const Duration(milliseconds: 500),
                          child: const EcoTipsView());
                    },
                  ));
                }),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 23.0.r,
                        child: SvgPictureComponent(
                          name: tipsSvgAssetName[index],
                          width: 24,
                          height: 24,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.7,
                            child: Text(
                              tips[index],
                              style: TextStyles.font16BlackMeduim,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.7,
                            child: Text(
                              tipsDescription[index],
                              style: TextStyles.font12Grey1SemiBold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 25.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          color: ColorsManager.green1,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 12.w,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 2.h,
                    height: 15.h,
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
