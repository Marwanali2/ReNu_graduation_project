import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/common_app_bar.dart';
import 'package:graduation_project/core/widgets/show_snack_bar.dart';
import 'package:graduation_project/features/auth/presentation/mangers/auth%20cubit/auth_cubit.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_text_field.dart';

class AccountInfo extends StatefulWidget {
  const AccountInfo({super.key});

  @override
  State<AccountInfo> createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  late TextEditingController userNameController;
  late TextEditingController oldPasswordController;
  late TextEditingController newPasswordController;
  late TextEditingController newPasswordConfirmationController;

  @override
  void initState() {
    super.initState();
    userNameController = TextEditingController();
    oldPasswordController = TextEditingController();
    newPasswordController = TextEditingController();
    newPasswordConfirmationController = TextEditingController();
  }

  @override
  void dispose() {
    userNameController.dispose();
    oldPasswordController.dispose();
    newPasswordController.dispose();
    newPasswordConfirmationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
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
                    BlocListener<AuthCubit, AuthState>(
                      listener: (context, state) {
                        if (state is EditUserLoadingState) {
                          const CircularProgressIndicator();
                        } else if (state is EditUserSuccessState) {
                          showSnackBar(
                            context: context,
                            label: "Account Info Updated Successfully",
                            backgroundColor: ColorsManager.green1,
                          );
                        } else if (state is EditUserFailureState) {
                          showSnackBar(
                            context: context,
                            label: 'Failed to Update Account Info, TRY AGAIN',
                            backgroundColor: Colors.red,
                          );
                        }
                      },
                      child: TextButton(
                        onPressed: () async {
                          if (userNameController.text.isEmpty ||
                              oldPasswordController.text.isEmpty ||
                              newPasswordController.text.isEmpty ||
                              newPasswordConfirmationController.text.isEmpty) {
                            showSnackBar(
                              context: context,
                              label: 'Please fill all fields',
                              backgroundColor: Colors.red,
                            );
                            return;
                          }
                          if (kDebugMode) {
                            print(
                                '*******************${userNameController.text}, ${oldPasswordController.text}, ${newPasswordController.text}, ${newPasswordConfirmationController.text}');
                          }
                          await BlocProvider.of<AuthCubit>(context).editUser(
                            name: userNameController.text.toString(),
                            oldPassword: oldPasswordController.text.toString(),
                            password: newPasswordController.text.toString(),
                            passwordConfirmation:
                                newPasswordConfirmationController.text
                                    .toString(),
                          );
                        },
                        child: Text(
                          'Edit',
                          style: TextStyles.font20BlackMeduim.copyWith(
                            fontSize: 15.sp,
                          ),
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
                  textInputType: TextInputType.text,
                  controller: userNameController,
                  width: double.infinity,
                  textFieldBorderColor: ColorsManager.green1,
                ),
                const SizedBox(height: 20),
                Text(
                  'Old Password',
                  style: Styles.textStyle20.copyWith(
                    fontFamily: interFont,
                    color: ColorsManager.green1,
                  ),
                ),
                const SizedBox(height: 4),
                CustomTextField(
                  hintText: 'Enter your old password',
                  obscureText: true,
                  textInputType: TextInputType.text,
                  controller: oldPasswordController,
                  width: double.infinity,
                  textFieldBorderColor: ColorsManager.green1,
                ),
                const SizedBox(height: 20),
                Text(
                  'New Password',
                  style: Styles.textStyle20.copyWith(
                    fontFamily: interFont,
                    color: ColorsManager.green1,
                  ),
                ),
                const SizedBox(height: 4),
                CustomTextField(
                  hintText: 'Enter your new password',
                  textInputType: TextInputType.text,
                  obscureText: true,
                  controller: newPasswordController,
                  width: double.infinity,
                  textFieldBorderColor: ColorsManager.green1,
                ),
                Text(
                  'New Password Confirmation',
                  style: Styles.textStyle20.copyWith(
                    fontFamily: interFont,
                    color: ColorsManager.green1,
                  ),
                ),
                const SizedBox(height: 4),
                CustomTextField(
                  hintText: 'Enter your new password again',
                  obscureText: true,
                  textInputType: TextInputType.emailAddress,
                  controller: newPasswordConfirmationController,
                  width: double.infinity,
                  textFieldBorderColor: ColorsManager.green1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
