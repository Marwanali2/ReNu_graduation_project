import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/back_container.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/show_subscription_time_container.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/text_with_underline.dart';

class CleanupCheckView extends StatelessWidget {
  CleanupCheckView({super.key});
  // final _calendarControllerToday = AdvancedCalendarController.today();
  // final _calendarControllerCustom =
  //     AdvancedCalendarController(DateTime(2022, 10, 23));
  // final events = <DateTime>[
  //   DateTime.now(),
  //   DateTime(2022, 10, 10),
  // ];
  @override
  Widget build(BuildContext context) {
    //  final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackContainerWidget(),
          centerTitle: true,
          title: Text(
            'Clean Up',
            style: TextStyles.font20BlackMeduim,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 48.h),
                Text(
                  'Clean Up Day',
                  style: TextStyles.font14BlackMeduim,
                ),
                SizedBox(height: 15.h),
                /*  AdvancedCalendar(
                  controller: _calendarControllerToday,
                  events: events,
                  startWeekDay: 1,
                ),
                 SizedBox(height: 15.h), */
                Text(
                  'subscription time',
                  style: TextStyles.font13Grey1Light.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8.h),
                const ShowSubscriptionTimeContainer(
                  title: 'subscription start time',
                  date: '1 Feb 2024',
                  svgAsset: 'assets/svg/start_date.svg',
                ),
                SizedBox(height: 8.h),
                const ShowSubscriptionTimeContainer(
                  title: 'subscription expiry time',
                  date: '23 Feb 2024',
                  svgAsset: 'assets/svg/end_date.svg',
                ),
                SizedBox(height: 14.h),
                // Text(
                //   'Cleaner Location',
                //   style: TextStyles.font14BlackMeduim,
                // ),
                //  SizedBox(height: 14.h),
                Center(child: SvgPicture.asset('assets/svg/Group 36750.svg')),
                SizedBox(height: 30.h),
                TitleWithSecondUnderLineTextRow(
                  title: 'Last Clean Up',
                  secondText: 'Show more',
                  secondTextOnTap: () {},
                ),
                SizedBox(height: 20.h),
                ListView.builder(
                  itemCount: 3,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: const LastCleanUpContainer(),
                    );
                  },
                ),
                SizedBox(height: 20.h),
                TitleWithSecondUnderLineTextRow(
                  title: 'Clean Up Tips',
                  secondText: 'Show more',
                  secondTextOnTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LastCleanUpContainer extends StatelessWidget {
  const LastCleanUpContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width.w,
      height: MediaQuery.sizeOf(context).height * 0.08.h,
      decoration: BoxDecoration(
        color: ColorsManager.semiGrey3,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Row(
          children: [
            Container(
              width: 27.w,
              height: 27.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: ColorsManager.mainBlack,
              ),
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Special request Company',
                  style: TextStyles.font14Grey2SemiBold,
                ),
                Text(
                  '2 Feb 2024',
                  style: TextStyles.font12SemiBlack1SemiBold,
                )
              ],
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_rounded),
          ],
        ),
      ),
    );
  }
}

class TitleWithSecondUnderLineTextRow extends StatelessWidget {
  const TitleWithSecondUnderLineTextRow({
    super.key,
    required this.title,
    required this.secondText,
    required this.secondTextOnTap,
  });
  final String title;
  final String secondText;
  final void Function() secondTextOnTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyles.font14BlackMeduim,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: TextWithUnderLine(
            text: secondText,
            lineWidth: 70.w,
           // onTap: secondTextOnTap,
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 12.w,
        ),
      ],
    );
  }
}
