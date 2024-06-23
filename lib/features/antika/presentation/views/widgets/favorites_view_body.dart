import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/grid_view.dart';

class FavoritesViewBody extends StatelessWidget {
  const FavoritesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(left: 25, right: 25),
        child: FavoritesGridView());
  }
}
