import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class DescripeOffersButton extends StatelessWidget {
  const DescripeOffersButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlack),
        maximumSize: MaterialStateProperty.all(
          Size(
            220.w,
            56.h,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10.r,
            ),
          ),
        ),
      ),
      onPressed: () {
        GoRouter.of(context).push(AppRouter.kFavCompanies);
      },
      child: Center(
        child: Text(
          'EGP 100 / For 3 Month',
          style: TextStyles.font16BlackSemiBoldInter.copyWith(
            color: ColorsManager.mainWhite,
          ),
        ),
      ),
    );
  }
}
