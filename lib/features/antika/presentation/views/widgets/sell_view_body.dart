import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/choose_category_list_view.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/custom_antica_text_field.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/custom_upload_image.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/custom_antica_sell_button.dart';
class SellViewBody extends StatefulWidget {
  const SellViewBody({super.key});
  @override
  State<SellViewBody> createState() => _SellViewBodyState();
}

class _SellViewBodyState extends State<SellViewBody> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding:const EdgeInsets.only(top: 25,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         const CustomUploadImage(),
         const SizedBox(
            height: 20,
          ),
          Text('Choose category',
              style: Styles.textStyle16
                  .copyWith(color: blackcolor,
                   fontFamily: poppinsBlackFont
                   )),
                  const SizedBox(height: 10,),
                  const ChooseCatigoryBodyListView(),
                  const SizedBox(height: 20,),
                  Text('Product Name ',style: Styles.textStyle14.copyWith(fontFamily: interFont,color: blackcolor),),
                 const CustomAnticaTextField(height: 56,),
                const SizedBox(height: 10,),
                   Text('Description',style: Styles.textStyle14.copyWith(fontFamily: interFont,color: blackcolor),),
                  const CustomAnticaTextField(height: 117,),
                  const SizedBox(height: 20,),
                 const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomAnticaSellButton( text: 'Create Post'),
           ],),
                const SizedBox(height: 10,)
        ]),
      ),
    );
  }
}

 