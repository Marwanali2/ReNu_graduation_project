import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/errors/custom_error_widget.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/antika/presentation/manger/show_camera_cubit/show_camera_cubit.dart';
import 'package:graduation_project/features/antika/presentation/manger/show_coins/show_coins_cubit.dart';
import 'package:graduation_project/features/antika/presentation/manger/show_jewelry_cubit/show_jewelry_cubit.dart';

class CatigoriesViewBody extends StatelessWidget {
  const CatigoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Coins',
                  style: Styles.textStyle20,
                ),
                GestureDetector(
                  child: Text(
                    'See all ',
                    style: Styles.textStyle13.copyWith(
                      decoration: TextDecoration.underline,
                      fontFamily: poppinsBlackFont,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            
             SizedBox(
                height: 152,
                child: BlocBuilder<ShowCoinsCubit, ShowCoinsState>(
                  builder: (context, state) {
                    if (state is ShowCoinsSuccess){
                      return ListView.builder(
        itemCount: state.showcoinAntika.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  height: 124,
                  width: 97,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: borderColor,
                  ),
                  child: Center(child: Image.network('https://api-service.cloud/recycle/storage/app/public/'+state.showcoinAntika[index].image)),
                ),
              ),
              Text(
                state.showcoinAntika[index].name,
                style: Styles.textStyle11,
              ),
              Text(
                state.showcoinAntika[index].createdAt.toString(),
                style: Styles.textStyle7,
              ),
            ],
          );
        });
                    }else if (state is ShowCoinsFailure){
                              return CustomErrorWidget(errorMessage: state.errorMessage,);

                    }else{
                       return const Center(
          child:  CircularProgressIndicator()
          );
                    }
                  }
                )
                ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Camera',
                  style: Styles.textStyle20,
                ),
                GestureDetector(
                  child: Text(
                    'See all ',
                    style: Styles.textStyle13.copyWith(
                      decoration: TextDecoration.underline,
                      fontFamily: poppinsBlackFont,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
             SizedBox(
                height: 152,
                child: BlocBuilder<ShowCameraCubit, ShowCameraState>(
                  builder: (context, state) {
                    if (state is ShowCameraSuccess){
                      return ListView.builder(
        itemCount: state.showcameraAntika.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  height: 124,
                  width: 97,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: borderColor,
                  ),
                  child: Center(child: Image.network('https://api-service.cloud/recycle/storage/app/public/'+state.showcameraAntika[index].image)),
                ),
              ),
              Text(
                state.showcameraAntika[index].name,
                style: Styles.textStyle11,
              ),
              Text(
                state.showcameraAntika[index].createdAt.toString(),
                style: Styles.textStyle7,
              ),
            ],
          );
        });
                    }else if (state is ShowCameraFailure){
                              return CustomErrorWidget(errorMessage: state.errorMessage,);

                    }else{
                       return const Center(
          child:  CircularProgressIndicator()
          );
                    }
                  }
                )),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'jewelry',
                  style: Styles.textStyle20,
                ),
                GestureDetector(
                  child: Text(
                    'See all ',
                    style: Styles.textStyle13.copyWith(
                      decoration: TextDecoration.underline,
                      fontFamily: poppinsBlackFont,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
             SizedBox(
                height: 152,
                child: BlocBuilder<ShowJewelryCubit, ShowJewelryState>(
                  builder: (context, state) {
                    if (state is ShowJewelrySuccess){
                      return ListView.builder(
        itemCount: state.showJewelryAntika.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  height: 124,
                  width: 97,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: borderColor,
                  ),
                  child: Center(child: Image.network('https://api-service.cloud/recycle/storage/app/public/'+state.showJewelryAntika[index].image)),
                ),
              ),

              Text(
                state.showJewelryAntika[index].name,
                style: Styles.textStyle11,
              ),
              Text(
                state.showJewelryAntika[index].createdAt.toString(),
                style: Styles.textStyle7,
              )
              
            ],
          );
        });
                    }else if (state is ShowJewelryFailure){
                              return CustomErrorWidget(errorMessage: state.errorMessage,);

                    }else{
                       return const Center(
          child:  CircularProgressIndicator()
          );
                    }
                  }
                )),
          ],
        ),
      ),
    );
  }
}
