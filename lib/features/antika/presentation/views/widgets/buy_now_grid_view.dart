import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/errors/custom_error_widget.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/antika/presentation/manger/fav%20cubit/favorites_cubit.dart';
import 'package:intl/intl.dart';

class BuyNowGridView extends StatelessWidget {
  const BuyNowGridView({super.key});
String formatDate(String dateString) {
  // Parse the original date string
  DateTime dateTime = DateTime.parse(dateString);

  // Format the date to the desired output
  String formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);

  return formattedDate;
}
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        if (state is FavoritesSuccess) {
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
              final details = state.showAntika[index];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.kDetailsOfAntica,
                      extra: details
                      
                      );

                    },
                    child: Container(
                      width: 143,
                      height: 163,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        //mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.network(
                              'https://api-service.cloud/recycle/storage/app/public/' +
                                  details.image),
                          
                        ],
                      ),
                    ),
                  ),
                  Text(
                    details.name,
                    style: Styles.textStyle11,
                  ),
                  Text(
                    formatDate(
                   details.createdAt.toString()),
                    style: Styles.textStyle7,
                  ),
                ],
              );
            }),
          );
        } else if (state is FavoritesFailure) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  
  }
}