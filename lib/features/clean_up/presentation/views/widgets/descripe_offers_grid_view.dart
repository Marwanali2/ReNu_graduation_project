import 'package:flutter/material.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/descripe_offers_grid_single_container.dart';

class DescripeOffersGridView extends StatelessWidget {
  const DescripeOffersGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.5,
      child: GridView.builder(
        itemCount: 6,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.85,
          mainAxisSpacing: 31,
        ),
        itemBuilder: (context, index) {
          return const DescripeOffersGridSingleContainer();
        },
      ),
    );
  }
}
