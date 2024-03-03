import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/catigories_list_view.dart';

class CatigoriesViewBody extends StatelessWidget {
  const CatigoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20,top:12 ),
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
                      fontFamily: poppinsBlackFont,
                      fontWeight: FontWeight.w500,
                      color: blackcolor
                      ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 146,
              child: CatigoriesListView(name: 'Flower Poetry', date: 'May 23 - June 23')),
            const SizedBox(height: 20,),

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
                      fontFamily: poppinsBlackFont,
                      fontWeight: FontWeight.w500,
                      color: blackcolor
                      ),
                  ),
                ),
              ],
            ),
           const SizedBox(
              height: 146,
              child: CatigoriesListView(name: 'Flower Poetry', date: 'May 23 - June 23')),

 const SizedBox(height: 20,),
            
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
                      fontFamily: poppinsBlackFont,
                      fontWeight: FontWeight.w500,
                      color: blackcolor
                      ),
                  ),
                ),
              ],
            ),
           const SizedBox(
              height: 146,
              child: CatigoriesListView(name: 'Flower Poetry', date: 'May 23 - June 23')),
          ],
        ),
      ),
    );
  }
}

