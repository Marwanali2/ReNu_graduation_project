import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/catigories.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/choose_category_list_view.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/custom_upload_image.dart';

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
        padding:const EdgeInsets.only(top: 25,left: 20),
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
                  const ChooseCatigoryListView(),
                  const SizedBox(height: 5,),
                  Text('Product Name ',style: Styles.textStyle14.copyWith(fontFamily: interFont,color: blackcolor),),

                   Text('Description',style: Styles.textStyle14.copyWith(fontFamily: interFont,color: blackcolor),),

      
        ]),
      ),
    );
  }
}
