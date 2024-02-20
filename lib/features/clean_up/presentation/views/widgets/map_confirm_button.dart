import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30.h,
      left: 16.w,
      right: 16.w,
      child: ElevatedButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSelectCompany);
          },
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size(330.w, 55.h)),
            backgroundColor:
                MaterialStateProperty.all(ColorsManager.semiBlack2),
          ),
          child: Text('Confirm', style: TextStyles.font22WhiteMeduim)),
    );
  }
}
