import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/descripe_offers_grid_single_container.dart';

class DescripeOffersGridView extends StatelessWidget {
  const DescripeOffersGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.37,
      child: IntrinsicHeight(
        child: GridView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.75.w,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 10.w,
          ),
          itemBuilder: (context, index) {
            return const DescripeOffersGridSingleContainer();
          },
        ),
      ),
    );
  }
}
