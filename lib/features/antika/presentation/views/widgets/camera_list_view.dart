import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/errors/custom_error_widget.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/antika/presentation/manger/show_camera_cubit/show_camera_cubit.dart';
import 'package:intl/intl.dart';

class CustomCameraListView extends StatelessWidget {
  const CustomCameraListView({super.key});
  String formatDate(String dateString) {
    // Parse the original date string
    DateTime dateTime = DateTime.parse(dateString);

    // Format the date to the desired output
    String formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);

    return formattedDate;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowCameraCubit, ShowCameraState>(
        builder: (context, state) {
      if (state is ShowCameraSuccess) {
        return SizedBox(
          width:double.infinity,
          child: ListView.builder(
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
                          ),
                          child: Center(
                              child: Image.network(
                                  'https://api-service.cloud/recycle/storage/app/public/' +
                                      state.showcameraAntika[index].image)
          
                              // 'https://api-service.cloud/recycle/storage/app/public/'+state.showcameraAntika[index].image
                              )),
                    ),
                    Text(
                      state.showcameraAntika[index].name,
                      style: Styles.textStyle11,
                    ),
                    Text(
                      formatDate(
                        state.showcameraAntika[index].createdAt.toString(),
                      ),
                      style: Styles.textStyle7,
                    ),
                  ],
                );
              }),
        );
      } else if (state is ShowCameraFailure) {
        return CustomErrorWidget(
          errorMessage: state.errorMessage,
        );
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
