import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/recent_recycling_component.dart';

class RecentRecyclingListView extends StatelessWidget {
  const RecentRecyclingListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> prices = [
      '+500RPs',
      '-500RPs',
      '+500RPs',
      '-500RPs',
      '+500RPs',
      '+500RPs',
      '-500RPs',
      '+500RPs',
      '-500RPs',
      '+500RPs',
    ];
     List<String> svgAssetName = [
      'recycling-box',
      'recycling_cart',
      'recycling-box',
      'recycling_cart',
      'recycling-box',

    ];
    List<Color> pricesColors = [
      Colors.green,
      Colors.red,
      Colors.green,
      Colors.red,
      Colors.green,
  
    ];
    return ListView.builder(
      shrinkWrap: true,
      itemCount: svgAssetName.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: RecentRecyclingComponent(
            status: 'Recycle Successful',
            time: '2 days ago',
            price: prices[index],
            svgAssetName: svgAssetName[index],
            priceColor: pricesColors[index],
          ),
        );
      },
    );
  }
}
