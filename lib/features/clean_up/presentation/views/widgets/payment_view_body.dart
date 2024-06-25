import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/back_icon_widget.dart';
import 'package:graduation_project/core/widgets/custom_button_field.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/payment_text_field.dart';
import 'package:lottie/lottie.dart';

final TextEditingController creditNumber = TextEditingController();
final TextEditingController cvv = TextEditingController();
final TextEditingController expires = TextEditingController();

class PaymentViewBody extends StatefulWidget {
  const PaymentViewBody({super.key});

  @override
  State<PaymentViewBody> createState() => _PaymentViewBodyState();
}

class _PaymentViewBodyState extends State<PaymentViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController creditNumber = TextEditingController();
  final TextEditingController cvv = TextEditingController();
  final TextEditingController expires = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
          child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const BackIconWidget(),
                        Text(
                          'Payment',
                          style: Styles.textStyle16.copyWith(color: blackcolor),
                        ),
                      ],
                    ),
                  ),
                  Center(
                      child: Lottie.asset(
                    'assets/lottie/creditcard.json',
                    repeat: true,
                  )),
                  SizedBox(
                    width: 320,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Card Number'),
                        const SizedBox(
                          height: 5,
                        ),
                        PaymentTextField(
                            hinttext: 'Card Number', controller: creditNumber),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 320,
                    height: 105,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 155,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('CVV'),
                              const SizedBox(
                                height: 5,
                              ),
                              PaymentTextField(hinttext: '328', controller: cvv)
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 155,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Expires'),
                              const SizedBox(
                                height: 5,
                              ),
                              PaymentTextField(
                                  hinttext: '01/26', controller: expires)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        ColorsManager.green1,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.green[300]!,
                            width: 5.w,
                          ),
                          borderRadius: BorderRadius.circular(
                            10.r,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kpaymentSuccess);
                      //TODO: @Ananhamdy11 navigate to payment screen
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 18.h,
                        bottom: 18.h,
                      ),
                      child: Center(
                        child: Text(
                          'confirm',
                          style: TextStyles.font16BlackSemiBoldInter.copyWith(
                            color: ColorsManager.mainWhite,
                            fontFamily: 'Popins',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
