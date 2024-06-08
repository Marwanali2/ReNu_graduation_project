import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/widgets/common_app_bar.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/recent_recycling_section.dart';

class HistoryPointsView extends StatelessWidget {
  const HistoryPointsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
            child: Column(
              children: [
                CommonAppBar(
                  title: 'Recent Recycling',
                  sizedBoxWidth: MediaQuery.of(context).size.width * 0.1,
                ),
                SizedBox(height: 48.h),
                const RecentRecyclingListView() // TODO: change this  list view to listview of history points
              ],
            ),
          ),
        ),
      ),
    );
  }
}
