import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/errors/custom_error_widget.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/antika/presentation/manger/show_jewelry_cubit/show_jewelry_cubit.dart';
import 'package:intl/intl.dart';

class CustomJewelryListView extends StatelessWidget {
  const CustomJewelryListView({super.key});
  String formatDate(String dateString) {
    // Parse the original date string
    DateTime dateTime = DateTime.parse(dateString);

    // Format the date to the desired output
    String formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);

    return formattedDate;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowJewelryCubit, ShowJewelryState>(
        builder: (context, state) {
      if (state is ShowJewelrySuccess) {
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
                      ),
                      child: Center(
                          child: Image.network(
                              'https://api-service.cloud/recycle/storage/app/public/' +
                                  state.showJewelryAntika[index].image)),
                    ),
                  ),
                  Text(
                    state.showJewelryAntika[index].name,
                    style: Styles.textStyle11,
                  ),
                  Text(
                    formatDate(
                        state.showJewelryAntika[index].createdAt.toString()),
                    // state.showJewelryAntika[index].createdAt.toString(),
                    style: Styles.textStyle7,
                  )
                ],
              );
            });
      } else if (state is ShowJewelryFailure) {
        return CustomErrorWidget(
          errorMessage: state.errorMessage,
        );
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
