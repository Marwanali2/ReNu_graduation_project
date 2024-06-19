import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_text_field.dart';

class CustomMobileNumber extends StatelessWidget {
  CustomMobileNumber({super.key});
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController repeatpasswordcontroller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Phone number',
          style: Styles.textStyle14
              .copyWith(color: blackcolor, fontFamily: interFont),
        ),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
            width: 320,
            child: CustomTextField(
              controller: phonecontroller,
              hintText: '0101 645 0937',
              textInputType: TextInputType.phone,
            )),
      ],
    );
  }
}
