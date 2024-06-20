import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/camera_list_view.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/coins_list_view.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/jewelry_list_view.dart';

class CatigoriesViewBody extends StatelessWidget {
  const CatigoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Coins',
                  style: Styles.textStyle20,
                ),
                GestureDetector(
                  child: Text(
                    'See all ',
                    style: Styles.textStyle13.copyWith(
                      decoration: TextDecoration.underline,
                      fontFamily: poppinsBlackFont,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 152, child: CoinsListView()),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Camera',
                  style: Styles.textStyle20,
                ),
                GestureDetector(
                  child: Text(
                    'See all ',
                    style: Styles.textStyle13.copyWith(
                      decoration: TextDecoration.underline,
                      fontFamily: poppinsBlackFont,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 152, child: CustomCameraListView()),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'jewelry',
                  style: Styles.textStyle20,
                ),
                GestureDetector(
                  child: Text(
                    'See all ',
                    style: Styles.textStyle13.copyWith(
                      decoration: TextDecoration.underline,
                      fontFamily: poppinsBlackFont,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 152, child: CustomJewelryListView())
          ],
        ),
      ),
    );
  }
}
