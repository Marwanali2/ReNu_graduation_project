import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/descripe_offers_button.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/descripe_offers_grid_view.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/descripe_offers_special_request_stack.dart';

class DescripeOffers extends StatelessWidget {
  const DescripeOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const DescripeOffersSpecialRequestStack(),
              Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 25.h),
                child: Column(
                  children: [
                    SizedBox(height: 14.h),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      style: TextStyles.font14BlackLight,
                    ),
                    SizedBox(height: 25.h),
                    const DescripeOffersGridView(),
                    // SizedBox(height: MediaQuery.sizeOf(context).height * 0.1.h),
                    SizedBox(height: 8.h),
                     DescripeOffersButton(text:  'EGP 100 / For 3 Month',buttonColor: MaterialStateProperty.all(ColorsManager.mainBlack),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
