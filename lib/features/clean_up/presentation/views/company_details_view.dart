import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/clean_up/presentation/views/cleanup_check_view.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/company_details_appbar_and_container.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/offers_tap_body.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/select_cleanup_time_body.dart';
import 'package:lottie/lottie.dart';
import 'package:panara_dialogs/panara_dialogs.dart';

final List<String> items = [
  'Every Day',
  'Every Week',
];
String? selectedValue;
bool isEveryDay = true;

class CompanyDetailsView extends StatefulWidget {
  const CompanyDetailsView({Key? key}) : super(key: key);

  @override
  State<CompanyDetailsView> createState() => _CompanyDetailsViewState();
}

class _CompanyDetailsViewState extends State<CompanyDetailsView> {
  DateTime? selectedStartDate;
  DateTime? selectedEndDate;

  void _presentDateRangePicker() {
    showDateRangePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
      helpText: 'Select a range for EcoDelta Services',
      keyboardType: TextInputType.datetime,
    ).then((pickedDateRange) {
      if (pickedDateRange == null) {
        return;
      }
      setState(() {
        selectedStartDate = pickedDateRange.start;
        selectedEndDate = pickedDateRange.end;
      });
    });
  }

  String selectedTime = '9:00 AM';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  indicatorPadding: EdgeInsets.only(top: 25.h),
                  indicator: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsManager.green1,
                  ),
                  labelPadding: EdgeInsets.only(bottom: 5.h),
                  physics: const BouncingScrollPhysics(),
                  tabs: [
                    Text(
                      'Offers',
                      style: TextStyles.font15SemiBlack2SemiBold.copyWith(
                          fontSize: 20.sp, color: ColorsManager.mainBlack),
                    ),
                    Text(
                      'Worktime',
                      style: TextStyles.font15SemiBlack2SemiBold.copyWith(
                          fontSize: 20.sp, color: ColorsManager.mainBlack),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height,
                  child: TabBarView(
                    children: [
                      OffersTapBody(),
                      Padding(
                          padding: EdgeInsets.only(left: 16.w, right: 16.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Lottie.asset(
                                'assets/lottie/select_date.json',
                                height: 150.h,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.01,
                              ),
                              TextButton(
                                onPressed: _presentDateRangePicker,
                                child: Column(
                                  children: [
                                    Text(
                                      'Select The Start-End Date Range',
                                      style: TextStyles.font16BlackSemiBoldInter
                                          .copyWith(
                                        color: ColorsManager.mainBlack,
                                        fontFamily: 'Popins',
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      child: Divider(
                                        color: ColorsManager.mainBlack,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.02,
                              ),
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
                                  if (selectedStartDate == null &&
                                      selectedEndDate == null) {
                                    PanaraInfoDialog.show(
                                      context,
                                      title: 'Missed Step',
                                      message: 'Select Start-End Date Range',
                                      buttonText: "Okay",
                                      onTapDismiss: () {
                                        Navigator.pop(context);
                                      },
                                      panaraDialogType: PanaraDialogType.normal,
                                      barrierDismissible: false,
                                    );
                                  } else {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CleanupCheckView(
                                          selectedEndDate: selectedStartDate,
                                          selectedStartDate: selectedEndDate,
                                        ),
                                      ),
                                    );
                                  }
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 18.h,
                                    bottom: 18.h,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Show CleanUP Check Summary',
                                      style: TextStyles.font16BlackSemiBoldInter
                                          .copyWith(
                                        color: ColorsManager.mainWhite,
                                        fontFamily: 'Popins',
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // // display the selected date
                              // Container(
                              //   padding: const EdgeInsets.all(30),
                              //   child: Text(
                              //     selectedStartDate != null &&
                              //             selectedEndDate != null
                              //         ? '@${selectedStartDate.toString()} to ${selectedEndDate.toString()}'
                              //         : 'No date selected!',
                              //     style: const TextStyle(fontSize: 30),
                              //   ),
                              // )
                            ],
                          )
                          ),
                    ],
                  ),
                ),
              ],
            ),
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
