import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/company_container.dart';

class CompaniesListView extends StatelessWidget {
  const CompaniesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: const CompaniesContainer(
            title: 'Collection',
            rating: 4.1,
            numOfRatings: 30,
            deliveryDuration: '20 mins',
            deliveryCost: 22.56,
            imageAsset: 'assets/images/anosa.jpg',
          ),
        );
      },
    );
  }
}
