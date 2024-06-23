import 'package:flutter/material.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/buy_now_grid_view.dart';

class BuyNowViewBody1 extends StatelessWidget {
  const BuyNowViewBody1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: BuyNowGridView(),
    );
  }
}
