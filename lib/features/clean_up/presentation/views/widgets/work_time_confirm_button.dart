import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class WorkTimeConfirmButton extends StatelessWidget {
  const WorkTimeConfirmButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          ColorsManager.mainWhite,
        ),
        fixedSize: MaterialStateProperty.all(Size(110.w, 50.h)),
        side: MaterialStateProperty.all(
            BorderSide(color: ColorsManager.mainBlack)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
      child: Center(
        child: Text(
          'Confirm',
          style: TextStyles.font16BlackSemiBoldInter,
        ),
      ),
    );
  }
}
