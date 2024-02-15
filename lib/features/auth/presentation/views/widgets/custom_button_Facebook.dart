import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CusttomButtonFaceBook extends StatelessWidget {
  const CusttomButtonFaceBook({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 35,
        width: 242,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: buttonColor.withOpacity(0.6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.facebook_sharp, 
             color: buttonColor
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              'it’s easier to sign up now',
              style: Styles.textStyle14
                  .copyWith(fontWeight: FontWeight.w500, color: whiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
