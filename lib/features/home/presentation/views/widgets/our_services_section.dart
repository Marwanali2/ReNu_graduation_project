import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/service_container_component.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/location_service.dart';
import 'package:graduation_project/features/recycling/presentation/views/recycling_view.dart';
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
              serviceSVGName: 'recycling-truck',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SlideInLeft(child: const RecyclingView());
                }));
                // GoRouter.of(context).push(AppRouter.kRecycling);
              },
            ),
            SizedBox(
              width: 35.w,
            ),
            ServiceContainerComponent(
              serviceName: 'CleanUp',
              serviceSVGName: 'clean-up',
              onTap: () async {
                try {
                  await locationService.checkAndRequestLocationService();
                  await locationService.checkAndRequestLocationPermission();
                  // ignore: use_build_context_synchronously
                  GoRouter.of(context).push(AppRouter.kCleanUp);
                } catch (e) {
                  PanaraInfoDialog.showAnimatedFromTop(
                    // ignore: use_build_context_synchronously
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
              serviceName: 'Antika',
              serviceSVGName: 'antika',
              onTap: () {
                GoRouter.of(context).push(AppRouter.kAnticaTabbar);
              },
            ),
          ],
        ),
      ],
    );
  }
}
