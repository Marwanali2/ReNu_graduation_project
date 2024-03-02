import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/back_container.dart';

class DescripeOffersSpecialRequestStack extends StatelessWidget {
  const DescripeOffersSpecialRequestStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/anosa400-219.jpg',
        ),
        Positioned(
          left: 20.w,
          top: 30.h,
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: const BackContainerWidget(),
          ),
        ),
        Positioned(
          left: 20.w,
          bottom: 2.h,
          child: Text(
            'Special request',
            style: TextStyles.font24MeduimSemiBlack1,
          ),
        )
      ],
    );
  }
}
