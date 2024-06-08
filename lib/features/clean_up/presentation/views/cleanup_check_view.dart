import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/common_app_bar.dart';
import 'package:graduation_project/features/clean_up/presentation/views/custom_google_map.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/back_container.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/show_subscription_time_container.dart';
import 'package:graduation_project/features/home/presentation/views/last_cleanup_view.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/last_cleanup_section.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/text_with_underline.dart';
import 'package:table_calendar/table_calendar.dart';

class CleanupCheckView extends StatefulWidget {
  CleanupCheckView(
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
    print(
        '****************************************${widget.selectedStartDate!.toIso8601String().split('T').first}');
    print('****************************************${widget.selectedEndDate}');
  }

  // final _calendarControllerToday = AdvancedCalendarController.today();
  @override
  Widget build(BuildContext context) {
    //  final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 32.h),
          child: SingleChildScrollView(
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
                      'Cleaner Location',
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
                      label: const Text('View'),
                    )
                  ],
                ),
                SizedBox(height: 14.h),
                const SvgPictureComponent(
                  name: 'company_location',
                  width: double.infinity,
                  height: 151,
                ),
                SizedBox(height: 14.h),
                TitleWithSecondUnderLineTextRow(
                  title: 'Last Clean Up',
                  secondText: 'Show more',
                  secondTextOnTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LastCleanUpView()),
                    );
                    //  GoRouter.of(context).push(AppRouter.kCleanUp);
                  },
                ),
                SizedBox(height: 20.h),
                const LastCleanUpListView(),
                SizedBox(height: 20.h),
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
          onTap: secondTextOnTap,
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
