import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/company_details_appbar_and_container.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/offers_tap_body.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/select_cleanup_time_body.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/work_time_confirm_button.dart';

final List<String> items = [
  'Every Day',
  'Every Week',
];
String? selectedValue;
bool isEveryDay = true;

class CompanyDetails extends StatefulWidget {
  const CompanyDetails({Key? key}) : super(key: key);

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  String selectedTime = '9:00 AM';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CompanydetailsAppbarAndContainer(),
              SizedBox(
                height: 130.h,
              ),
              TabBar(
                dividerColor: ColorsManager.mainWhite,
                indicatorColor: ColorsManager.mainBlack,
                indicatorPadding: EdgeInsets.only(top: 25.h),
                indicator: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsManager.mainBlack,
                ),
                physics: const BouncingScrollPhysics(),
                tabs: [
                  Text(
                    'Offers',
                    style: TextStyles.font22SemiGrey1SemiBold,
                  ),
                  Text(
                    'Worktime',
                    style: TextStyles.font22SemiGrey1SemiBold,
                  ),
                ],
              ),
              SizedBox(
                height: 13.h,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: TabBarView(
                  children: [
                    const OffersTapBody(),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w, right: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Reiteration Time',
                            style: TextStyles.font16BlackMeduim,
                          ),
                          SizedBox(height: 15.h),
                          selectReiterationTime(),
                          SizedBox(height: 60.h),
                          Text(
                            'Clean-Up Time',
                            style: TextStyles.font16BlackMeduim,
                          ),
                          SizedBox(height: 15.h),
                          selectCleanUpTime(),
                          const Spacer(),
                          const Align(
                            alignment: Alignment.bottomRight,
                            child: WorkTimeConfirmButton(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Center selectCleanUpTime() {
    return Center(
      child: Container(
        height: 65.h,
        width: 191.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15.r),
          ),
          border: Border.all(
            color: ColorsManager.mainBlack,
          ),
        ),
        child: isEveryDay
            ? Row(
                children: [
                  SizedBox(width: 10.w),
                  Icon(
                    Icons.access_time,
                    size: 20.spMax,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select a time',
                        style: TextStyles.font16BlackSemiBoldInter
                            .copyWith(fontSize: 15.sp),
                      ),
                      Row(
                        children: [
                          DropdownButton<String>(
                            value: selectedTime,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedTime = newValue!;
                              });
                            },
                            items: <String>[
                              '9:00 AM',
                              '10:00 AM',
                              '12:00 PM',
                              '3:00 PM',
                              '6:00 PM',
                              '8:00 PM',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            : const SelectCleanUpTimeBody(),
      ),
    );
  }

  Center selectReiterationTime() {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: Row(
            children: [
              Icon(
                Icons.edit_calendar,
                size: 20.spMax,
                color: ColorsManager.mainBlack,
              ),
              SizedBox(
                width: 4.w,
              ),
              Expanded(
                child: Text(
                  'Every Day',
                  style: TextStyles.font16BlackSemiBoldInter,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          items: items
              .map(
                (String item) => DropdownMenuItem(
                  value: item,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/week.svg',
                        height: 16.h,
                      ),
                      SizedBox(
                        width: 9.w,
                      ),
                      Text(
                        item,
                        style: TextStyles.font16BlackMeduimRoboto,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              )
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            if (selectedValue != 'Every Day') {
              setState(() {
                isEveryDay = false;
              });
            }
            setState(() {
              selectedValue = value;
            });
          },
          buttonStyleData: ButtonStyleData(
            height: 50.h,
            width: 191.w,
            padding: EdgeInsets.only(left: 14.w, right: 14.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              border: Border.all(
                color: ColorsManager.mainBlack,
              ),
              color: Colors.white,
            ),
            elevation: 0,
          ),
          iconStyleData: IconStyleData(
            icon: const Icon(
              Icons.keyboard_arrow_down_outlined,
            ),
            iconSize: 25.spMax,
            iconEnabledColor: ColorsManager.mainBlack,
            iconDisabledColor: Colors.grey,
          ),
          dropdownStyleData: DropdownStyleData(
            direction: DropdownDirection.left,
            maxHeight: 90.h,
            width: 160.w,
            elevation: 0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              color: ColorsManager.mainWhite,
              border: Border.all(
                color: ColorsManager.mainBlack,
              ),
            ),
          ),
          menuItemStyleData: MenuItemStyleData(
            height: 40.h,
            padding: EdgeInsets.only(
              left: 20.w,
            ),
          ),
        ),
      ),
    );
  }

  Center reiterationTimeDropDownButton() {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: Row(
            children: [
              Icon(
                Icons.edit_calendar,
                size: 20.spMax,
                color: ColorsManager.mainBlack,
              ),
              SizedBox(
                width: 4.w,
              ),
              Expanded(
                child: Text(
                  'Every Day',
                  style: TextStyles.font16BlackSemiBoldInter,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          items: items
              .map(
                (String item) => DropdownMenuItem(
                  value: item,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/week.svg',
                        height: 16.h,
                      ),
                      SizedBox(
                        width: 9.w,
                      ),
                      Text(
                        item,
                        style: TextStyles.font16BlackMeduimRoboto,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              )
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
          buttonStyleData: ButtonStyleData(
            height: 50.h,
            width: 191.w,
            padding: EdgeInsets.only(left: 14.w, right: 14.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              border: Border.all(
                color: ColorsManager.mainBlack,
              ),
              color: Colors.white,
            ),
            elevation: 0,
          ),
          iconStyleData: IconStyleData(
            icon: const Icon(
              Icons.keyboard_arrow_down_outlined,
            ),
            iconSize: 25.spMax,
            iconEnabledColor: ColorsManager.mainBlack,
            iconDisabledColor: Colors.grey,
          ),
          dropdownStyleData: DropdownStyleData(
            direction: DropdownDirection.left,
            maxHeight: 90.h,
            width: 160.w,
            elevation: 0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              color: ColorsManager.mainWhite,
              border: Border.all(
                color: ColorsManager.mainBlack,
              ),
            ),
          ),
          menuItemStyleData: MenuItemStyleData(
            height: 40.h,
            padding: EdgeInsets.only(
              left: 20.w,
            ),
          ),
        ),
      ),
    );
  }
}
