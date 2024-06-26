import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/auth/presentation/mangers/auth%20cubit/auth_cubit.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';
import 'package:graduation_project/features/recycling/presentation/managers/recycling%20cubit/recycling_cubit.dart';

class StarRating extends StatelessWidget {
  const StarRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(color: ColorsManager.mainWhite),
      ),
      width: 90.w,
      height: 28.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SvgPictureComponent(
            name: 'star',
            width: 0,
            height: 20,
          ),
          const SizedBox(
            width: 5,
          ),
          BlocBuilder<RecyclingCubit, RecyclingState>(
            builder: (context, state) {
              return SizedBox(
                width: 40.w,
                child: Center(
                  child: Container(
                    child: Text(
                      displayValue(),
                      style: TextStyles.font10WhiteMeduim
                          .copyWith(fontSize: 15.sp),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  String displayValue() {
    int totalPoints = int.tryParse(RecyclingCubit.totalPoints.toString()) ?? 0;
    int userPoints = int.tryParse(AuthCubit.userModel.points!) ?? 0;

    if (totalPoints > userPoints) {
      return RecyclingCubit.totalPoints.toString();
    } else {
      return AuthCubit.userModel.points.toString();
    }
  }
}
