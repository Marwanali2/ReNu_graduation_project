import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/features/clean_up/presentation/managers/cubit/clean_up_cubit.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/company_container.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/your_location_appbar.dart';

class SelectCompanyView extends StatefulWidget {
  const SelectCompanyView({super.key, required this.placemarks});
  final List<Placemark> placemarks;

  @override
  State<SelectCompanyView> createState() => _SelectCompanyViewState();
}

class _SelectCompanyViewState extends State<SelectCompanyView> {
  List<Placemark> placemarks = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              YourLocationAppBar(
                placemarks: widget.placemarks,
              ),
              SizedBox(
                height: 50.h,
              ),
              BlocBuilder<CleanUpCubit, CleanUpState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kCompanyDetails);
                        },
                        child: CompaniesContainer(
                          title: '${CleanUpCubit.companyModel.name}',
                          rating: 4.5,
                          numOfRatings: 30,
                          deliveryDuration: '15 mins',
                          deliveryCost: 50,
                          imageAsset: '',
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
