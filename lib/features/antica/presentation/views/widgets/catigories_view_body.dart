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
            decoration: TextDecoration.underline,         
             fontFamily: poppinsBlackFont,
                      fontWeight: FontWeight.w500,
                      ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 152,
              child: CatigoriesListView(name: 'Coin', date: 'May 23 - June 23',image: 'assests/images/coin1.png',)),
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
                      decoration: TextDecoration.underline,         
                      fontFamily: poppinsBlackFont,
                      fontWeight: FontWeight.w500,
                      ),
                  ),
                ),
              ],
            ),
           const SizedBox(
              height: 152,
              child: CatigoriesListView(name: 'Camera', date: 'May 23 - June 23',image: 'assests/images/camera1.png',)),

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
                                  decoration: TextDecoration.underline,         
                      fontFamily: poppinsBlackFont,
                      fontWeight: FontWeight.w500,
                      ),
                  ),
                ),
              ],
            ),
           const SizedBox(
              height: 152,
              child: CatigoriesListView(name: 'Flower Poetry', date: 'May 23 - June 23',image: 'assests/images/jew1.png',)),
          ],
        ),
      ),
    );
  }
}

