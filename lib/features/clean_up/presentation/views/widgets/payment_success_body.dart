import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/custom_button_field.dart';
import 'package:lottie/lottie.dart';

class PaymentSuccessViewBody extends StatelessWidget {
  const PaymentSuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/lottie/success.json'),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                ColorsManager.green1,
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.green[300]!,
                    width: 5.w,
                  ),
                  borderRadius: BorderRadius.circular(
                    10.r,
                  ),
                ),
              ),
            ),
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kpaymentSuccess);
            },
            child: Padding(
              padding: EdgeInsets.only(
                top: 18.h,
                bottom: 18.h,
              ),
              child: Center(
                child: Text(
                  'Review',
                  style: TextStyles.font16BlackSemiBoldInter.copyWith(
                    color: ColorsManager.mainWhite,
                    fontFamily: 'Popins',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
