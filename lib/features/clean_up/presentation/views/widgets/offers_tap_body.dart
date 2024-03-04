import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/offer_container.dart';

class OffersTapBody extends StatelessWidget {
  const OffersTapBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              bottom: 20.w,
            ),
            child: const OfferContainer(),
          );
        },
      ),
    );
  }
}
