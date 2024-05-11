import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/widgets/common_app_bar.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/last_cleanup_section.dart';

class LastCleanUpView extends StatelessWidget {
  const LastCleanUpView({super.key});

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
                  title: 'Last Clean-Up',
                  sizedBoxWidth: MediaQuery.of(context).size.width * 0.1,
                ),
                SizedBox(height: 48.h),
                const LastCleanUpListView()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
