import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/back_container.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';

class EcoTipsView extends StatelessWidget {
  const EcoTipsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    color: ColorsManager.green1.withOpacity(0.3),
                    child: const Center(
                      child: SvgPictureComponent(
                        name: 'green-city',
                        width: 105,
                        height: 105,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
                    child: GestureDetector(
                      onTap: () => GoRouter.of(context).pop(),
                      child: BackContainerWidget(
                        bordercolor: ColorsManager.green1,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.only(
                    left: 15.w, right: 15.w, top: 20.h, bottom: 10),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Energy saving',
                        style: TextStyles.font20SemiBlack1SemiBold,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Energy Saving refers to the effort made to reduce the consumption of energy by using less of a power source or using it more efficiently. This can be achieved through simple practices such as turning off lights and appliances when not in use, using energy-efficient appliances, and optimizing energy use in industrial and commercial sectors.',
                      style: TextStyles.font12Grey1SemiBold,
                    ),
                    SizedBox(height: 20.h),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/eco_tips_imagejpg.jpg',
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'This includes LED lighting, energy-efficient heating and cooling systems, and appliances rated with Energy Star standards. These technologies are designed to provide the same or better service while using less energy, helping to reduce energy costs and environmental impact.',
                      style: TextStyles.font12Grey1SemiBold,
                    ),
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
