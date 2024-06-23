import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/back_icon_widget.dart';
import 'package:graduation_project/core/widgets/custom_button_field.dart';
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
            key:formKey,
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
               Center(child: Lottie.asset('assets/lottie/creditcard.json',repeat: true,)),
             
           
             SizedBox(
              width:320 ,
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  const  Text('Card Number'),
            const SizedBox(height: 5,),
                   PaymentTextField(hinttext: 'Card Number',controller:creditNumber),
                 ],
               ),
             ),
             const SizedBox(height: 20,),
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
                      const  SizedBox(height: 5,),
                        PaymentTextField(hinttext: '328',controller:cvv)
                      ],
                    ),
                  ),
                   SizedBox(
                    width: 155,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       const Text('Expires'),
                       const SizedBox(height: 5,),
                        PaymentTextField(hinttext: '01/26',controller:expires)
                      ],
                    ),
                  ),
                ],
              ),
             ),
             const SizedBox(height: 40,),
             CustomButtonField(
            text: 'Confirm',
            backgroundcolor: borderFormColor,
            textcolor: whiteColor,
            ontap: () {
        if (formKey.currentState!.validate()) {
          GoRouter.of(context).push(AppRouter.kpaymentSuccess);
            };
            },

          )
            ],
          )),
        ),
      ),
    );
  }
}

class PaymentTextField extends StatelessWidget {
  const PaymentTextField({
    super.key, required this.hinttext, required this.controller,
  });
final String hinttext;
 final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:TextInputType.datetime,
      controller: controller,
      validator: (value) {
         if (value!.isEmpty) {
              return 'field is required';
            }else if(hinttext =='Card Number' && value.length<16){
              return 'Enter 16 correct number ';
            }else if(hinttext =='328' && value.length<3){
              return 'Enter 3 correct number ';
            }
      },
     decoration: InputDecoration(
    
                constraints: const BoxConstraints(minHeight: 50),
                isDense: true,
                hintText:hinttext,
                hintStyle: Styles.textStyle14.copyWith(fontFamily: interFont),
                border: const OutlineInputBorder(
                  borderRadius:  BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(width: 1, color: borderColor),
                ),
                errorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(width: 1, color: Color(0xffE64646)),
                ),
                enabledBorder:const OutlineInputBorder(
                  borderRadius:  BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(width: 1, color: buttonColor),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: borderFormColor),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
    );
  }
}