import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/auth/presentation/mangers/auth%20cubit/auth_cubit.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/menu_button.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/profile_image.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/star_rating.dart';

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
          SizedBox(width: 10.w),
          // const NotificationIcon(),
          // SizedBox(width: 8.w),
          const StarRating(),
          const Spacer(),
          const UserInfo(),
          SizedBox(width: 10.w),
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
        // make the Text responsive
        SizedBox(
          width: 100.w,
          child: Text(
            '${AuthCubit.userModel.name}',
            maxLines: 2,
            style: TextStyles.font14WhiteMeduim.copyWith(
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.location_on_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              'Tanta',
              style: TextStyles.font11WhiteLight.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
