import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/errors/custom_error_widget.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/antika/presentation/manger/fav%20cubit/favorites_cubit.dart';

class FavoritesGridView extends StatelessWidget {
  const FavoritesGridView({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
       if(state is FavoritesSuccess){

       
        return GridView.builder(
          itemCount: state.showAntika.length,
          clipBehavior: Clip.none,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 220,
            crossAxisCount: 2,
            childAspectRatio: 0.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 1,
          ),
          itemBuilder: ((context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 143,
                  height: 183,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.network('https://api-service.cloud/recycle/storage/app/public/'+state.showAntika[index].image),
                      Padding(
                        padding: const EdgeInsets.only(top: 150, left: 110),
                        child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: blackcolor),
                                color: whiteColor),
                            child: GestureDetector(
                                child: const Icon(
                              Icons.favorite,
                              size: 18,
                              weight: 13,
                              color: Color(0xffEB001B),
                            ))),
                      ),
                    ],
                  ),
                ),
                Text(
                  state.showAntika[index].name,
                  style: Styles.textStyle11,
                ),
                Text(
                  state.showAntika[index].createdAt.toString(),
                  style: Styles.textStyle7,
                ),
              ],
            );
          }),
        );
      }else if(state is FavoritesFailure){
        return CustomErrorWidget(errorMessage: state.errorMessage,);

      }else {
        return const Center(
          child:  CircularProgressIndicator()
          );
      }
    },
    );
  }
}
