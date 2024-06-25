import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/antika/data/models/create_antika.dart';
import 'package:graduation_project/features/antika/data/models/store_antika.dart';
import 'package:graduation_project/features/antika/presentation/manger/create_antika%20cubit/cubit/create_antika_cubit.dart';
import 'package:graduation_project/features/antika/presentation/manger/store_cubit/store_cubit.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/categories_list_view.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/custom_antica_text_field.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/custom_upload_image.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/custom_antica_sell_button.dart';

class SellViewBody extends StatefulWidget {
  const SellViewBody({super.key});
  @override
  State<SellViewBody> createState() => _SellViewBodyState();
}

class _SellViewBodyState extends State<SellViewBody> {

  void initState() {
    super.initState();
    context.read<CreateAntikaCubit>().fetchDropdownItems();
  }
 final TextEditingController productNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  String selectedCategory = '';
  String imageUrl = '';
  File? _selectedImage;
  final Map<String, dynamic> data = {};
    CreateAntika? _selectedCategory;
void _handleCategorySelected(CreateAntika? category) {
    setState(() {
      _selectedCategory = category;
    });
    // You can also perform additional actions here based on the selected category
  }

 void _onImageSelected(File image) {
    setState(() {
      _selectedImage = image;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StoreCubit(Dio()),
       child: BlocListener<StoreCubit, StoreState>(
        listener: (context, state) {
          if (state is StoreCubitLoading) {
            // Show loading indicator
          } else if (state is StoreCubitSuccess) {
            // Show success message
          } else if (state is StoreCubitFailure) {
            // Show error message
          }
        },
      child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
               CustomUploadImage(onImageSelected: _onImageSelected),
              const SizedBox(
                height: 20,
              ),
              Text('Choose category',
                  style: Styles.textStyle16
                      .copyWith(color: blackcolor, fontFamily: poppinsBlackFont)),
              const SizedBox(
                height: 10,
              ),
               ChooseCatigoryBodyListView(onItemSelected: _handleCategorySelected),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Product Name ',
                style: Styles.textStyle14
                    .copyWith(fontFamily: interFont, color: blackcolor),
              ),
              const CustomAnticaTextField(
                height: 56,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Description',
                style: Styles.textStyle14
                    .copyWith(fontFamily: interFont, color: blackcolor),
              ),
              const CustomAnticaTextField(
                height: 117,
              ),
              const SizedBox(
                height: 20,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   GestureDetector(
      onTap: () {
        if (_selectedImage != null) {
                      // Add image to data to send to API
                      data['image'] = _selectedImage!;
                      context.read<StoreCubit>().submitSellItem(data as StoreAntika);
                    } else {
                     
                    }
      },
      child: Container(
        height: 56,
        width: 320,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderFormColor)),
        child: Center(
          child: Text(
            'Create Post',
            style: Styles.textStyle16
                .copyWith(fontFamily: interFont, color: borderFormColor),
          ),
        ),
      ),
    )
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ]),
          ),
        ),
       ));
  }}