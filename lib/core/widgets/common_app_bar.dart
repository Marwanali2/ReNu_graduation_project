import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/back_container.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => GoRouter.of(context).pop(),
          child: const BackContainerWidget(),
        ),
        SizedBox(width: 7.w),
        Text(
          title,
          style: TextStyles.font20BlackMeduim,
        ),
      ],
    );
  }
}
