import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/clean_up/presentation/views/select_company.dart';
import 'package:panara_dialogs/panara_dialogs.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    super.key,
    required this.placemarks,
  });
  final List<Placemark> placemarks;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30.h,
      left: 16.w,
      right: 16.w,
      child: ElevatedButton(
          onPressed: () {
            if (placemarks.isEmpty) {
              PanaraInfoDialog.show(
                context,
                title: 'Please set your location',
                message: 'Please set your location on the map to continue',
                buttonText: "Okay",
                onTapDismiss: () {
                  Navigator.pop(context);
                },
                panaraDialogType: PanaraDialogType.normal,
                barrierDismissible: false,
              );

              return;
            }
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SelectCompanyView(
                    placemarks: placemarks,
                  ),
                ));
          },
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size(330.w, 55.h)),
            backgroundColor:
                MaterialStateProperty.all(ColorsManager.semiBlack2),
          ),
          child: Text('Confirm', style: TextStyles.font22WhiteMeduim)),
    );
  }
}
