import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/common_app_bar.dart';
import 'package:graduation_project/features/auth/presentation/mangers/auth%20cubit/auth_cubit.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_text_field.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController userNameController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CommonAppBar(
                        title: 'Account Info',
                        sizedBoxWidth: MediaQuery.of(context).size.width * 0.15,
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            if (kDebugMode) {
                              print('Field is required');
                            }
                          }
                        },
                        child: Text(
                          'Edit',
                          style: TextStyles.font20BlackMeduim.copyWith(
                            fontSize: 15.sp,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.1.h),
                  Text(
                    'Username',
                    style: Styles.textStyle20.copyWith(
                      fontFamily: interFont,
                      color: ColorsManager.green1,
                    ),
                  ),
                  const SizedBox(height: 4),
                  CustomTextField(
                    hintText: '${AuthCubit.userModel.name}',
                    textInputType: TextInputType.name,
                    controller: userNameController,
                    textFieldBorderColor: ColorsManager.green1,
                    width: double.infinity,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'phone number',
                    style: Styles.textStyle20.copyWith(
                      fontFamily: interFont,
                      color: ColorsManager.green1,
                    ),
                  ),
                  const SizedBox(height: 4),
                  CustomTextField(
                    hintText: '${AuthCubit.userModel.phone}',
                    textInputType: TextInputType.phone,
                    controller: phoneNumberController,
                    width: double.infinity,
                    textFieldBorderColor: ColorsManager.green1,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Email',
                    style: Styles.textStyle20.copyWith(
                      fontFamily: interFont,
                      color: ColorsManager.green1,
                    ),
                  ),
                  const SizedBox(height: 4),
                  CustomTextField(
                    hintText: '${AuthCubit.userModel.email}',
                    textInputType: TextInputType.emailAddress,
                    controller: emailController,
                    width: double.infinity,
                    textFieldBorderColor: ColorsManager.green1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
