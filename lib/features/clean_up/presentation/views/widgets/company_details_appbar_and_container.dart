import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/back_container.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/company_details_view_container.dart';

class CompanydetailsAppbarAndContainer extends StatelessWidget {
  const CompanydetailsAppbarAndContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          'assets/images/Rectangle 210.png',
        ),
        const CompanyDetailsViewContainer(),
        Positioned(
          left: 16.w,
          top: 110.h,
          child: SizedBox(
            width: 51.w,
            height: 51.h,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.r),
                  bottomRight: Radius.circular(10.r)),
              child: Image.asset(
                'assets/images/anosa.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          left: 20.w,
          top: 30.h,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const BackContainerWidget(),
          ),
        )
      ],
    );
  }
}
