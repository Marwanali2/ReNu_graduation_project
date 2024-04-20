import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class FavoritesGridView extends StatelessWidget {
  const FavoritesGridView ({super.key, required this.name, required this.date, required this.image});
final String name;
final String date;
final String image;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 18,
      clipBehavior: Clip.none,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 220,
        crossAxisCount: 2,
        childAspectRatio: 0.5,
        crossAxisSpacing: 20,
        mainAxisSpacing: 1,
        ),
      itemBuilder: ((context, index) {
        return  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 143,
              height: 173,
              decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: borderColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(image),
                      Padding(
                        padding: const EdgeInsets.only(left: 100,top: 15,bottom: 10),
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: blackcolor)
                          ),
                          child:GestureDetector(child:const Icon(Icons.favorite,size: 18,weight:13,))),
                      ),
                      
                    ],
                  ),
                
            ),
            Text(
                name,
                style: Styles.textStyle11,
              ),
              Text(
                date,
                style: Styles.textStyle7,
              ),
          ],
        );
      }
      ),
      );
  }
}
