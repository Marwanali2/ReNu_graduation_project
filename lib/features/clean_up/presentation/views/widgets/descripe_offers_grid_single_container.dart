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
      children: [
        CircleAvatar(
          maxRadius: 40.r,
          foregroundImage: const AssetImage(
            'assets/images/anosa.jpg',
          ),
          minRadius: 40.r,
        ),
        SizedBox(height: 10.h),
        SizedBox(
          width: 100.w,
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
