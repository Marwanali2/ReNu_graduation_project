import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/common_app_bar.dart';
import 'package:graduation_project/features/clean_up/presentation/managers/cubit/clean_up_cubit.dart';
import 'package:graduation_project/features/clean_up/presentation/views/custom_google_map.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/show_subscription_time_container.dart';
import 'package:lottie/lottie.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CleanupCheckView extends StatefulWidget {
  const CleanupCheckView(
      {super.key,
      required this.selectedStartDate,
      required this.selectedEndDate});
  final DateTime? selectedStartDate;
  final DateTime? selectedEndDate;

  @override
  State<CleanupCheckView> createState() => _CleanupCheckViewState();
}

class _CleanupCheckViewState extends State<CleanupCheckView> {
  @override
  void initState() {
    super.initState();
    if (kDebugMode) {
      print(
          '****************************************${widget.selectedStartDate!.toIso8601String().split('T').first}');
    }
    if (kDebugMode) {
      print(
          '****************************************${widget.selectedEndDate}');
    }
  }

  // final _calendarControllerToday = AdvancedCalendarController.today();
  @override
  Widget build(BuildContext context) {
    //  final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 32.h),
          child: BlocBuilder<CleanUpCubit, CleanUpState>(
            builder: (context, state) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonAppBar(
                      title: 'Clean Up',
                      sizedBoxWidth: MediaQuery.sizeOf(context).width * 0.2,
                    ),
                    SizedBox(height: 48.h),
                    Text(
                      'Clean Up Calender',
                      style: TextStyles.font14BlackMeduim
                          .copyWith(fontFamily: 'Roboto'),
                    ),
                    SizedBox(height: 15.h),
                    TableCalendar(
                      firstDay: widget.selectedEndDate!,
                      lastDay: widget.selectedStartDate!,
                      focusedDay: widget.selectedEndDate!,
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      'subscription time',
                      style: TextStyles.font14BlackMeduim
                          .copyWith(fontFamily: 'Roboto'),
                    ),
                    SizedBox(height: 14.h),
                    ShowSubscriptionTimeContainer(
                      title: 'subscription start time',
                      date: widget.selectedEndDate!
                          .toIso8601String()
                          .split('T')
                          .first,
                      svgAsset: 'assets/svg/start_date.svg',
                      svgColor: ColorsManager.green1,
                      dateColor: ColorsManager.green1,
                    ),
                    SizedBox(height: 8.h),
                    ShowSubscriptionTimeContainer(
                      title: 'subscription expiry time',
                      date: widget.selectedStartDate!
                          .toIso8601String()
                          .split('T')
                          .first,
                      svgAsset: 'assets/svg/end_date.svg',
                      svgColor: ColorsManager.red,
                      dateColor: ColorsManager.red,
                    ),
                    SizedBox(height: 14.h),
                    Row(
                      children: [
                        Text(
                          'EcoDelta Recyclers Location',
                          style: TextStyles.font14BlackMeduim
                              .copyWith(fontFamily: 'Roboto'),
                        ),
                        const Spacer(),
                        TextButton.icon(
                          style: ButtonStyle(
                            iconColor:
                                MaterialStateProperty.all(ColorsManager.green1),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CustomGoogleMap(
                                    isShowCompany: true,
                                  ),
                                ));
                          },
                          icon: const Icon(Icons.map_outlined),
                          label: const Text(
                            'View',
                            style: TextStyle(color: Colors.black),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 14.h),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CustomGoogleMap(
                                isShowCompany: true,
                              ),
                            ));
                      },
                      child: Center(
                          child: Lottie.asset('assets/lottie/map.json',
                              height: 200.h)),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Customer Reviews',
                      style: TextStyles.font14BlackMeduim
                          .copyWith(fontFamily: 'Roboto'),
                    ),
                    SizedBox(height: 5.h),
                    state is ShowCompanyReviewsSuccessState
                        ? CleanUpCubit.customersReviews.isEmpty
                            ? Center(
                                child: Text(
                                  'No Reviews Yet',
                                  style: TextStyles.font14BlackMeduim
                                      .copyWith(fontFamily: 'Roboto'),
                                ),
                              )
                            : ListView.builder(
                                itemCount: CleanUpCubit.customersReviews.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.h),
                                    child: ShowReviewContainer(
                                      name: CleanUpCubit
                                          .customersReviews[index].userName,
                                      value: CleanUpCubit
                                          .customersReviews[index].value,
                                      date: CleanUpCubit
                                          .customersReviews[index].createdAt,
                                      theReview: CleanUpCubit
                                          .customersReviews[index].comment,
                                    ),
                                  );
                                },
                              )
                        : state is ShowCompanyReviewsLoadingState
                            ? Center(
                                child: CircularProgressIndicator(
                                  color: ColorsManager.green1,
                                ),
                              )
                            : Text(
                                'No Reviews Yet',
                                style: TextStyles.font14BlackMeduim
                                    .copyWith(fontFamily: 'Roboto'),
                              ),
                    SizedBox(height: 4.h),
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
                        //TODO: @Ananhamdy11 navigate to payment screen
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 18.h,
                          bottom: 18.h,
                        ),
                        child: Center(
                          child: Text(
                            'Pay Now',
                            style: TextStyles.font16BlackSemiBoldInter.copyWith(
                              color: ColorsManager.mainWhite,
                              fontFamily: 'Popins',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 14.h),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ShowReviewContainer extends StatelessWidget {
  const ShowReviewContainer({
    super.key,
    required this.name,
    required this.value,
    required this.date,
    required this.theReview,
  });
  final String? name;
  final String? value;
  final String? date;
  final String? theReview;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: ColorsManager.green1,
          width: 1.w,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(name!,
                    style:
                        TextStyles.font14BlackMeduim.copyWith(fontSize: 16.sp)),
                const Spacer(),
                RatingBar.builder(
                  initialRating: double.tryParse(value!)!,
                  itemSize: 30.sp,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  ignoreGestures: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
              ],
            ),
            Text(
              'Review Date: ${date!.split('T').first}',
              style: TextStyles.font14BlackMeduim.copyWith(
                color: Colors.grey,
                fontSize: 10.sp,
              ),
            ),
            SizedBox(height: 14.h),
            Center(
              child: Text(
                theReview!,
                style: TextStyles.font20BlackNormalRobot.copyWith(
                  fontSize: 17.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
