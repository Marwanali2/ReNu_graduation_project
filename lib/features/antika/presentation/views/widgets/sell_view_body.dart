import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/antika/data/models/antika_model.dart';
import 'package:graduation_project/features/antika/data/models/create_antika.dart';
import 'package:graduation_project/features/antika/data/models/store_new_antika.dart';
import 'package:graduation_project/features/antika/presentation/manger/create_antika%20cubit/cubit/create_antika_cubit.dart';
import 'package:graduation_project/features/antika/presentation/manger/store_cubit/store_cubit.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/categories_list_view.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/custom_antica_text_field.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/custom_upload_image.dart';

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
    GlobalKey<FormState> formKey = GlobalKey();

  String selectedCategory = '';
  String imageUrl = '';
  File? _selectedImage;
  final Map<String, dynamic> data = {};
  CreateAntika? _selectedCategory;
    void _handleCategorySelected(CreateAntika? category) {
    setState(() {
      _selectedCategory = category;
      selectedCategory = category?.name ?? '';
    });
  }


  void _onImageSelected(File image) {
    setState(() {
      _selectedImage = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoreCubit, StoreState>(
              listener: (context, state) {
                if (state is StoreCubitLoading) {
                } else if (state is StoreCubitSuccess) {
                  GoRouter.of(context).push(AppRouter.kHome);
                  print('success');
                } else if (state is StoreCubitFailure) {
                  // Show error message
                }
              },
              builder: (conext,state) {
           return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                  child: Form(
                    key:formKey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomUploadImage(onImageSelected: _onImageSelected),
                          const SizedBox(
                            height: 20,
                          ),
                          Text('Choose category',
                              style: Styles.textStyle16.copyWith(
                                  color: blackcolor, fontFamily: poppinsBlackFont)),
                          const SizedBox(
                            height: 10,
                          ),
                          ChooseCatigoryBodyListView(
                              onItemSelected: _handleCategorySelected),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Product Name ',
                            style: Styles.textStyle14
                                .copyWith(fontFamily: interFont, color: blackcolor),
                          ),
                          CustomAnticaTextField(
                            controller: productNameController,
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
                          CustomAnticaTextField(
                            controller: descriptionController,
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
                                  
                                  
                                   if (formKey.currentState!.validate()) {
                                  final item = StoreNewAntika(
                                      id: 56,
                                     image: _selectedImage?.path??'' ,
                                     name: productNameController.text, 
                                     desc: descriptionController.text, 
                                    categoryName: selectedCategory,
                                    createdAt: DateTime.now(),
                                     status: '0', 
                                    updatedAt: DateTime.now()
                                  );
                             BlocProvider.of<StoreCubit>(context).submitSellItem(item);
                             GoRouter.of(context).push(AppRouter.kAnticaTabbar);
                             print(item);
                                
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
                                      style: Styles.textStyle16.copyWith(
                                          fontFamily: interFont,
                                          color: borderFormColor),
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
              );
              }
    );
  }
}
