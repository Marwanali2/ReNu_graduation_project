import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/custom_button_field.dart';
import 'package:graduation_project/core/widgets/custom_text_field.dart';
import 'package:graduation_project/core/widgets/show_snack_bar.dart';
import 'package:graduation_project/features/clean_up/presentation/managers/cubit/clean_up_cubit.dart';
import 'package:lottie/lottie.dart';

class PaymentSuccessViewBody extends StatelessWidget {
  PaymentSuccessViewBody({super.key});
  TextEditingController reviewController = TextEditingController();
  int stars = 1;
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
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.h),
                        RatingBar.builder(
                          initialRating: 0,
                          itemSize: 30.sp,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            stars = rating.toInt();
                          },
                        ),
                        SizedBox(height: 10.h),
                        SizedBox(
                            height: 56.h,
                            width: 320.w,
                            child: TextField(
                              controller: reviewController,
                              maxLines: 20,
                              decoration: const InputDecoration(
                                hintStyle: Styles.textStyle14,
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(width: 1, color: borderColor),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xffE64646)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(width: 1, color: borderColor),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: borderFormColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                            )),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: ElevatedButton(
                            // style: ButtonStyle(
                            //     backgroundColor:ColorsManager.green1,
                            //     ),
                            onPressed: () {
                              if (reviewController.text.isEmpty) {
                                showSnackBar(
                                    context: context,
                                    label: 'can\'t send blank review',
                                    backgroundColor: ColorsManager.red);
                              } else {
                                BlocProvider.of<CleanUpCubit>(context)
                                    .sendCustomerReview(
                                        numberOfStars: stars.toString(),
                                        reviewComment:
                                            reviewController.text.toString());
                                showSnackBar(
                                    context: context,
                                    label: 'Your Review Send Successfully',
                                    backgroundColor: ColorsManager.green1);
                              }
                            },
                            child: Center(
                              child: Text(
                                'Send Review',
                                style: TextStyles.font16BlackSemiBoldInter
                                    .copyWith(
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
                },
              );
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
