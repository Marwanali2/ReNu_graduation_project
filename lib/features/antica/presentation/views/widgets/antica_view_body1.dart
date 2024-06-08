import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/grid_view.dart';

class BuyNowViewBody1 extends StatelessWidget {
  const BuyNowViewBody1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Stack(
        children: [
          const FavoritesGridView(name: 'Flower Poetry ', date: 'May 23 - June 23',image: 'assests/images/Rectangle246.png',),
          Padding(
            padding: const EdgeInsets.only(top: 450),
            child: GestureDetector(
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color:const Color(0xff5B5B5B).withOpacity(0.7)
                  
                ),
                child: Center(
                  child: Image.asset('assests/images/Vector1.png')
                )
              )
            ),
          )
        ],
      ),
    );
  }
}