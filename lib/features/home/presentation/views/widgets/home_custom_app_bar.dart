import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/menu_button.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/notifications_icon.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/profile_image.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/star_rating.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const MenuButton(),
          SizedBox(width: 8.w),
          const NotificationIcon(),
          SizedBox(width: 8.w),
          const StarRating(),
          const Spacer(),
          const UserInfo(),
          SizedBox(width: 7.w),
          const ProfileImage(),
        ],
      ),
    );
  }
}



// مش مستاهلة احطها في فايل تاني
class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Hello, Marwan', style: TextStyles.font14WhiteMeduim),
        SizedBox(
          height: 2.h,
        ),
        Row(
          children: [
            const SvgPictureComponent(
              name: 'marker',
              width: 16,
              height: 16,
              color: Colors.white,
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              'Egypt, Tanta',
              style: TextStyles.font11WhiteLight.copyWith(fontSize: 12.sp),
            ),
          ],
        ),
      ],
    );
  }
}

