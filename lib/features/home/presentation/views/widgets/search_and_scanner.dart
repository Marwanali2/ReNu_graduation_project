import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/search_field_container.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';

class SearchAndScanner extends StatelessWidget {
  const SearchAndScanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SearchFieldContainer(),
        SizedBox(
          width: 12.w,
        ),
        GestureDetector(
          onTap: () {},
          child: const SvgPictureComponent(
            name: 'scanner',
            width: 20,
            height: 20,
          ),
        ),
      ],
    );
  }
}
