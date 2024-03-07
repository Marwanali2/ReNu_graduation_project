import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/grid_view.dart';

class BuyNowViewBody extends StatelessWidget {
  const BuyNowViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        FavoritesGridView(name: 'Flower Poetry ', date: 'May 23 - June 23'),
        
      ],
    );
  }
}