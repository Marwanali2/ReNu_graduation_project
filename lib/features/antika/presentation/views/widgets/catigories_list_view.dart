import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CatigoriesListView extends StatelessWidget {
  const CatigoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  height: 124,
                  width: 97,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: borderColor,
                  ),
                  child: Center(child: Image.asset('assests/images/Sweep.png')),
                ),
              ),
              Text(
                'name',
                style: Styles.textStyle11,
              ),
              Text(
                'date',
                style: Styles.textStyle7,
              ),
            ],
          );
        });
  }
}
