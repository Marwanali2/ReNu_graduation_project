import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/common_app_bar.dart';
import 'package:graduation_project/core/widgets/show_snack_bar.dart';
import 'package:graduation_project/features/recycling/presentation/managers/recycling%20cubit/recycling_cubit.dart';
import 'package:graduation_project/features/recycling/presentation/views/widgets/quantity_control.dart';
import 'package:graduation_project/features/recycling/presentation/views/widgets/recycle_type_container.dart';

class RecyclingView extends StatelessWidget {
  const RecyclingView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
            child: BlocConsumer<RecyclingCubit, RecyclingState>(
              listener: (context, state) {
                if (state is SendRequestSuccessState) {
                  showSnackBar(
                    context: context,
                    label:
                        'Request Sent Successfully, wait the company to accept/decline it',
                    backgroundColor: Colors.blue,
                  );
                } else if (state is SendRequestFailureState) {
                  showSnackBar(
                    context: context,
                    label: 'Failed to Send Request, TRY AGAIN',
                    backgroundColor: Colors.red,
                  );
                } else if (state is SendRequestLoadingState) {
                  const CircularProgressIndicator();
                }
              },
              builder: (context, state) {
                return Column(
                  children: [
                    CommonAppBar(
                      title: 'Order Recycling ',
                      sizedBoxWidth: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.13.h,
                    ),
                    const RecycleTypeContainer(
                      recycleTypeText: 'Plastic',
                      recycleTypeSvg: 'guidance_plastic',
                      showQuantityControl: true,
                    ),
                    SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.03.h),
                    const RecycleTypeContainer(
                      recycleTypeText: 'Iron',
                      recycleTypeSvg: 'iconoir_electronics-chip',
                      showQuantityControl: true,
                    ),
                    SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.03.h),
                    const RecycleTypeContainer(
                      recycleTypeText: 'Glass',
                      recycleTypeSvg: 'game-icons_shattered-glass',
                      showQuantityControl: true,
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.1.h),
                    Row(
                      children: [
                        Text(
                          'Total Points',
                          style: TextStyles.font20BlackMeduim,
                        ),
                        const Spacer(),
                        Text(
                          '${RecyclingCubit.totalPoints} Points',
                          style: TextStyles.font14BlackMeduim.copyWith(
                            color: ColorsManager.green1,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.04.h),
                    ElevatedButton(
                        onPressed: () async {
                          await BlocProvider.of<RecyclingCubit>(context)
                              .sendRequest(
                            weightOfBlastic: PlasticQuantityControl
                                    .plasticController.text.isNotEmpty
                                ? int.parse(PlasticQuantityControl
                                    .plasticController.text)
                                : 0,
                            weightOfIron: IronQuantityControl
                                    .ironController.text.isNotEmpty
                                ? int.parse(
                                    IronQuantityControl.ironController.text)
                                : 0,
                            weightOfGlass: GlassQuantityControl
                                    .glassController.text.isNotEmpty
                                ? int.parse(
                                    GlassQuantityControl.glassController.text)
                                : 0,
                          )
                              .then((value) {
                            BlocProvider.of<RecyclingCubit>(context)
                                .showRequestResult();
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            ColorsManager.green1.withOpacity(0.8),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.green[300]!,
                                width: 5.w,
                              ),
                              borderRadius: BorderRadius.circular(
                                10.r,
                              ),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 18.h,
                            bottom: 18.h,
                          ),
                          child: Center(
                            child: Text(
                              'Confirm Order',
                              style: TextStyles.font22WhiteMeduim,
                            ),
                          ),
                        )),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
