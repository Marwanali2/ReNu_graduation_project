import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/service_container_component.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/location_service.dart';
import 'package:panara_dialogs/panara_dialogs.dart';

LocationService locationService = LocationService();

class OurServicesSection extends StatelessWidget {
  const OurServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Our Services', style: TextStyles.font20SemiBlack1SemiBold),
        SizedBox(height: 11.h),
        Row(
          children: [
            ServiceContainerComponent(
              serviceName: 'Recycling',
              onTap: () {},
            ),
            SizedBox(
              width: 35.w,
            ),
            ServiceContainerComponent(
              serviceName: 'CleanUp',
              onTap: () async {
                try {
                  await locationService.checkAndRequestLocationService();
                  await locationService.checkAndRequestLocationPermission();
                  GoRouter.of(context).pushReplacement(AppRouter.kCleanUp);
                } catch (e) {
                  PanaraInfoDialog.showAnimatedFromTop(
                    context,
                    title: "Error",
                    message: "please, enable location service and permissions",
                    buttonText: "Okay",
                    color: Colors.red,
                    onTapDismiss: () {
                      Navigator.pop(context);
                    },
                    panaraDialogType: PanaraDialogType.custom,
                    barrierDismissible: false,
                  );
                }
              },
            ),
            SizedBox(
              width: 35.w,
            ),
            ServiceContainerComponent(
              serviceName: 'Antica',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
