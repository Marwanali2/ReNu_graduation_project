import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/last_cleanup_component.dart';

class LastCleanUpListView extends StatelessWidget {
  const LastCleanUpListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> times = [
      '9:00 AM',
      '9:00 PM',
      '9:00 AM',
      '9:00 PM',
    ];
    List<String> days = [
      '2 Feb 2024',
      '3 Feb 2024',
      '4 Feb 2024',
      '5 Feb 2024',
    ];
    return ListView.builder(
      shrinkWrap: true,
      itemCount: days.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: LastCleanUpComponent(
            days: days[index],
            times: times[index],
          ),
        );
      },
    );
  }
}
