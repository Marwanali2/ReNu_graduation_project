import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/styles.dart';

class DescripeOffersGridSingleContainer extends StatelessWidget {
  const DescripeOffersGridSingleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          maxRadius: 35.r,
          foregroundImage: const AssetImage(
            'assets/images/anosa.jpg',
          ),
        ),
        SizedBox(height: 5.h),
        Padding(
          padding: EdgeInsets.only(left: 5.w),
          child: Text(
            'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.font12BlackNormal,
          ),
        )
      ],
    );
  }
}
