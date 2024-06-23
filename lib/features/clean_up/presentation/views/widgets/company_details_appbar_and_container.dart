import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/back_container.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/company_details_view_container.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';

class CompanydetailsAppbarAndContainer extends StatelessWidget {
  const CompanydetailsAppbarAndContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * 0.25,
          child: Center(
            child: Image.network(
                'https://api-service.cloud/recycle/storage/app/public/FD2uB65wVPjwskeTZBKSHj1ivANAg3dG.jpeg'),
          ),
        ),
        const CompanyDetailsViewContainer(),
        Positioned(
          left: 16.w,
          top: 160.h,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.r),
              bottomRight: Radius.circular(10.r),
            ),
            child: Container(
              width: 51.w,
              height: 48.h,
              decoration: BoxDecoration(
                color: ColorsManager.green2,
              ),
              child: const Center(
                child: SvgPictureComponent(
                  name: 'rubbish',
                  height: 24,
                  width: 24,
                ),
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
