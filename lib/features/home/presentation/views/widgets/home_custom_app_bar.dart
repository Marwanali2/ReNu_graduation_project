import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 40.w,
            height: 50.h,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: Image.asset(
              'assets/images/anosa.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(
            width: 7.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello,UserName', style: TextStyles.font14WhiteMeduim),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  const SvgPictureComponent(
                    name: 'marker',
                    width: 16,
                    height: 16,
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text(
                    'Egypt ,Tanta',
                    style: TextStyles.font11WhiteLight,
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: ColorsManager.semiGrey3,
            ),
            width: 47.w,
            height: 20.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SvgPictureComponent(
                  name: 'points',
                  width: 12,
                  height: 12,
                ),
                SizedBox(
                  width: 1.w,
                ),
                Text(
                  '230',
                  style: TextStyles.font10BlackMeduim,
                ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          const SvgPictureComponent(
            name: 'notification',
            width: 20,
            height: 21,
          ),
          SizedBox(width: 8.w),
          const SvgPictureComponent(
            name: 'slider',
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }
}
